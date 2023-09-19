// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class UserRepo extends UserRepoAbstract {
  UserRepo()
      : _userApi = GetIt.instance.get<AmplifyModelApiAbstract<User>>(),
        _authService = GetIt.instance.get<AmplifyAuthServiceAbstract>() {
    _init();
  }

  final AmplifyModelApiAbstract<User> _userApi;
  final AmplifyAuthServiceAbstract _authService;

  final _currentUser = BehaviorSubject<User?>();
  final _cache = <String, User>{};
  bool _hasMoreItems = false;

  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  Future<void> _init() async {
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
  Future<(User?, List<GraphQLResponseError>)> get(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (user, errors) = await _userApi.get(id);

    if (user != null) {
      _cache[id] = user;
    }

    return (user, errors);
  }

  @override
  Future<(List<User>?, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _filter = filter;
    _limit = limit;
    _nextToken = nextToken;

    final (response, errors) = await _userApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    if (response.items != null) {
      for (final item in response.items!) {
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
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    if (response.items != null) {
      for (final item in response.items!) {
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
    final (user, errors) = await _userApi.create(item);
    final id = user?.id;

    if (user != null) {
      _cache[id!] = user;
    }

    return (user, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> update(
    User item, {
    List<AttributedFile>? images,
  }) async {
    final (user, errors) = await _userApi.update(item);

    if (user != null) {
      _cache[user.id] = user;
    }

    return (user, errors);
  }

  @override
  Future<(User?, List<GraphQLResponseError>)> delete(User item) async {
    final (user, errors) = await _userApi.delete(item.id);

    if (user != null) {
      _cache.remove(user.id);
    }

    return (user, errors);
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
  }

  Future<void> _loggedOut() async {
    _currentUser.add(null);

    if (!kIsWeb) {
      await Amplify.DataStore.clear();
    }
  }
}
