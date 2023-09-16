// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
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

  GraphQLRequest<PaginatedResult<User>>? _nextRequest;

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
  Future<(User?, Error?)> create(User item) async {
    final (user, error) = await _userApi.create(item);
    final id = user?.id;

    if (user != null) {
      _cache[id!] = user;
    }

    return (user, error);
  }

  @override
  Future<(User?, List<GraphQLResponseError>?)> read(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], null);
    }

    final (user, error) = await _userApi.read(id);

    if (user != null) {
      _cache[id] = user;
    }

    return (user, error);
  }

  @override
  Future<(User?, Error?)> update(User item) async {
    final (user, error) = await _userApi.update(item);

    if (user != null) {
      _cache[user.id] = user;
    }

    return (user, error);
  }

  @override
  Future<(User?, Error?)> delete(User item) async {
    final (user, error) = await _userApi.delete(item);

    if (user != null) {
      _cache.remove(user.id);
    }

    return (user, error);
  }

  @override
  Future<void> list({
    QueryPredicate<Model>? where,
    int? limit,
    String? nextToken,
  }) async {
    final response = await _userApi.list(
      where: where,
      limit: limit,
      nextToken: nextToken,
    );

    if (response == null) {
      return;
    }

    _hasMoreItems = response.hasNextResult;
    _nextRequest = response.requestForNextResult;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }
  }

  @override
  Future<void> listMore() async {
    if (!_hasMoreItems) {
      return;
    }

    final response = await _userApi.listMore(nextRequest: _nextRequest!);

    if (response == null) {
      return;
    }

    _hasMoreItems = response.hasNextResult;
    _nextRequest = response.requestForNextResult;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _nextRequest = null;
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
    final (user, _) = await read(authUser.userId);

    _currentUser.add(user);
  }

  Future<void> _loggedOut() async {
    _currentUser.add(null);

    if (!kIsWeb) {
      await Amplify.DataStore.clear();
    }
  }
}
