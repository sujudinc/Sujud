// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:collection/collection.dart';
// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class UserRepo extends UserRepoAbstract {
  UserRepo()
      : _userApi = GetIt.instance.get<ModelApiAbstract<User>>(),
        _authService = GetIt.instance.get<AmplifyAuthServiceAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        _localDatabaseUtility =
            GetIt.instance.get<LocalDatabaseUtilityAbstract>(param1: 'users'),
        _loggerUtility = GetIt.instance.get<LoggerUtilityAbstract>() {
    _init();
  }

  final ModelApiAbstract<User> _userApi;
  final AmplifyAuthServiceAbstract _authService;
  final AmplifyStorageServiceAbstract _storageService;
  final LocalDatabaseUtilityAbstract _localDatabaseUtility;
  final LoggerUtilityAbstract _loggerUtility;

  final _currentUser = BehaviorSubject<User?>();
  final _cache = <String, User>{};
  final _cachedImages = <String, Map<String, Uri>>{};
  bool _hasMoreItems = false;
  StreamSubscription<GraphqlSubscriptionResponse<User>>? _stream;
  Map<String, dynamic>? _variables;
  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  Future<void> _init() async {
    await _preloadDataFromLocalCache();
    await _fetchCurrentUser();
  }

  Future<void> _preloadDataFromLocalCache() async {
    _loggerUtility.log('Loading users from local cache.');

    final localCurrentUser = await _localDatabaseUtility.getOne(
      'currentUser',
    );

    if (localCurrentUser != null) {
      _currentUser.add(
        User.fromJson(localCurrentUser),
      );
    }

    final localData = await _localDatabaseUtility.getMany();

    if (localData.isNotEmpty) {
      for (final data in localData) {
        if (data.containsKey('filter') |
            data.containsKey('limit') |
            data.containsKey('nextToken')) {
          _filter = data['filter'];
          _limit = data['limit'];
          _nextToken = data['nextToken'];
        } else {
          final item = User.fromJson(data);

          _cache[item.id] = item;
        }
      }
    }
  }

  Future<void> _fetchCurrentUser() async {
    try {
      final authUser = await _authService.currentUser;

      if (authUser != null) {
        _loggedIn(authUser);
      }
    } on SignedOutException {
      _loggedOut();
    }

    _authService.userStateChange(
      onSignedIn: _loggedIn,
      onSignedOut: _loggedOut,
      onSessionExpired: _loggedOut,
      onUserDeleted: _loggedOut,
    );
  }

  @override
  User? get currentUser => _currentUser.valueOrNull;

  @override
  Stream<User?> get currentUserStream => _currentUser.stream;

  @override
  bool? get isLoggedIn => _currentUser.valueOrNull != null;

  @override
  List<User> get items => _cache.values.toList();

  @override
  Map<String, Map<String, Uri>> get cachedImages => _cachedImages;

  @override
  void setCachedImage({
    required String id,
    required String key,
    required Uri url,
  }) {
    if (cachedImages.containsKey(id)) {
      cachedImages[id]![key] = url;
    } else {
      cachedImages[id] = <String, Uri>{key: url};
    }

    _localDatabaseUtility.save('cachedImages', cachedImages);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> get(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (user, errors) = await _userApi.get(id: id, variables: _variables);

    if (user != null) {
      _cache[id] = user;
      _localDatabaseUtility.save(id, user.toJson());
    }

    return (user, errors);
  }

  @override
  Future<(List<User>?, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _variables = variables;
    _filter = filter;
    _limit = limit;
    _nextToken = nextToken;

    final (response, errors) = await _userApi.list(
      variables: _variables,
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
        'variables': variables,
        'filter': _filter,
        'limit': _limit,
        'nextToken': _nextToken,
      },
    );

    if (response.items != null) {
      for (final item in response.items!) {
        await _localDatabaseUtility.save(item!.id, item.toJson());
        _cache[item.id] = item;
      }
    }

    return (items, errors);
  }

  @override
  Future<(List<User>?, List<GraphQLResponseError>)> listMore() async {
    if (!_hasMoreItems) {
      return (null, <GraphQLResponseError>[]);
    }

    final (response, errors) = await _userApi.list(
      variables: _variables,
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
        'variables': _variables,
        'filter': _filter,
        'limit': _limit,
        'nextToken': _nextToken,
      },
    );

    if (response.items != null) {
      for (final item in response.items!) {
        await _localDatabaseUtility.save(item!.id, item.toJson());
        _cache[item.id] = item;
      }
    }

    return (items, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> create(
    User item, {
    List<AttributedFile>? images,
  }) async {
    if (images != null) {
      final keys = await Future.wait(
        images.mapIndexed(
          (index, image) => _storageService.upload(
            path: 'mosques/${item.id}/profile/',
            filename: 'mosque-profile-$index.${extension(image.localPath)}',
            file: image,
          ),
        ),
      );

      item = item.copyWith(selfie: keys.first);
    }

    final (user, errors) = await _userApi.create(
      item: item,
      variables: _variables,
    );

    return (user, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> update(
    User item, {
    List<AttributedFile>? images,
  }) async {
    final (user, errors) = await _userApi.update(
      item: item,
      variables: _variables,
    );

    return (user, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> delete(User item) async {
    final (user, errors) = await _userApi.delete(
      id: item.id,
      variables: _variables,
    );

    return (user, errors);
  }

  @override
  void subscribe({
    Function((User?, List<GraphQLResponseError>) response)? onCreated,
    Function((User?, List<GraphQLResponseError>) response)? onUpdated,
    Function((User?, List<GraphQLResponseError>) response)? onDeleted,
  }) {
    _stream = _userApi.subscribe(variables: _variables).listen((event) {
      switch (event.type) {
        case SubscriptionType.onCreate:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
            _cache[id!] = item;
            _localDatabaseUtility.save(id, item.toJson());
          }

          onCreated?.call((item, event.response.errors));
          break;
        case SubscriptionType.onUpdate:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
            _cache[id!] = item;
            _localDatabaseUtility.save(id, item.toJson());
          }

          onUpdated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onDelete:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
            _cache.remove(id!);
            _localDatabaseUtility.delete(id);
          }

          onDeleted?.call((event.response.data, event.response.errors));
          break;
      }
    });
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _nextToken = null;
  }

  @override
  Future<SignUpResult> register({
    required String username,
    required String password,
    required Map<AuthUserAttributeKey, String> userAttributes,
  }) async {
    final result = await _authService.register(
      username: username,
      password: password,
      userAttributes: userAttributes,
    );

    return result;
  }

  @override
  Future<SignUpResult> confirmUser({
    required String username,
    required String confirmationCode,
  }) async {
    final result = await _authService.confirmUser(
      username: username,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<ResendSignUpCodeResult> resendRegisterCode({
    required String username,
  }) async {
    final result = await _authService.resendRegisterCode(
      username: username,
    );

    return result;
  }

  @override
  Future<SignInResult> login({
    required String username,
    required String password,
  }) async {
    final result = await _authService.login(
      username: username,
      password: password,
    );

    return result;
  }

  @override
  Future<SignInResult> loginWithSocial({
    AuthProvider? provider,
  }) async {
    final result = await _authService.loginWithSocial(
      provider: provider,
    );

    return result;
  }

  @override
  Future<SignInResult> confirmMFA({
    required String username,
    required String confirmationCode,
  }) async {
    final result = await _authService.confirmMFA(
      username: username,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<ResetPasswordResult> resetPassword({
    required String username,
  }) async {
    final result = await _authService.resetPassword(
      username: username,
    );

    return result;
  }

  @override
  Future<ResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
  }) async {
    final result = await _authService.confirmResetPassword(
      username: username,
      newPassword: newPassword,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final result = _authService.updatePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );

    return result;
  }

  @override
  Future<List<AuthUserAttribute>> fetchCurrentUserAttributes() {
    final result = _authService.fetchCurrentUserAttributes();

    return result;
  }

  @override
  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
  }) async {
    final result = _authService.updateUserAttributes(
      attributes: attributes,
    );

    return result;
  }

  @override
  Future<ConfirmUserAttributeResult> verifyAttributeUpdate({
    required AuthUserAttributeKey attributeKey,
    required String confirmationCode,
  }) async {
    final result = await _authService.verifyAttributeUpdate(
      attributeKey: attributeKey,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<ResendUserAttributeConfirmationCodeResult> resendVerificationCode({
    required AuthUserAttributeKey key,
  }) async {
    final result = await _authService.resendVerificationCode(
      key: key,
    );

    return result;
  }

  @override
  Future<SignOutResult> logout() async {
    final result = await _authService.logout();

    return result;
  }

  @override
  Future<SignOutResult> logoutGlobally() async {
    final result = await _authService.logoutGlobally();

    return result;
  }

  Future<void> _loggedIn(AuthUser authUser) async {
    final (user, _) = await get(authUser.userId);

    _currentUser.add(user);
    _localDatabaseUtility.save('currentUser', user!.toJson());
  }

  Future<void> _loggedOut() async {
    _currentUser.add(null);
    _localDatabaseUtility.delete('currentUser');

    if (!kIsWeb) {
      await Amplify.DataStore.clear();
    }
  }

  @override
  void dispose() {
    if (_stream != null) {
      _stream!.cancel();
    }
  }
}
