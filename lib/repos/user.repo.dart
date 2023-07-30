// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/api/User.dart';

class UserRepo extends UserRepoAbstract {
  UserRepo()
      : _userApi = GetIt.instance.get<AmplifyModelApiAbstract<User>>(),
        _authService = GetIt.instance.get<AuthServiceAbstract>() {
    _init();
  }

  final AmplifyModelApiAbstract<User> _userApi;
  final AuthServiceAbstract _authService;

  final _currentUser = BehaviorSubject<User?>();
  final _cache = <String, User>{};
  bool _hasMoreItems = false;

  bool? _isLoggedIn;
  QueryPredicate<Model>? _where;
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
  bool? get isLoggedIn => _isLoggedIn;

  @override
  List<User> get cache => _cache.values.toList();

  @override
  Future<User?> create(User user) async {
    final response = await _userApi.create(user);

    if (response != null) {
      _cache[response.id] = response;
    }

    return response;
  }

  @override
  Future<User?> read(String id) async {
    if (_cache.containsKey(id)) {
      return _cache[id];
    }

    final response = await _userApi.read(id);

    if (response != null) {
      _cache[response.id] = response;
    }

    return response;
  }

  @override
  Future<User?> update(User user) async {
    final response = await _userApi.update(user);

    if (response != null) {
      _cache[response.id] = response;
    }

    return response;
  }

  @override
  Future<User?> delete(User user) async {
    final response = await _userApi.delete(user);

    if (response != null) {
      _cache.remove(response.id);
    }

    return response;
  }

  @override
  Future<List<User>> list({
    QueryPredicate<Model>? where,
    int? limit,
    String? nextToken,
  }) async {
    _where = where;

    final response = await _userApi.list(
      where: _where,
      limit: limit,
      nextToken: nextToken,
    );

    _hasMoreItems = response.nextToken != null;
    _nextToken = response.nextToken;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }

    return _cache.values.toList();
  }

  @override
  Future<List<User>> listMore() async {
    if (!_hasMoreItems) {
      return [];
    }

    final response = await _userApi.list(
      where: _where,
      limit: _limit,
      nextToken: _nextToken,
    );

    _hasMoreItems = response.nextToken != null;
    _nextToken = response.nextToken;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }

    return _cache.values.toList();
  }

  @override
  Future<int> count({QueryPredicate<Model>? where}) async {
    final response = await _userApi.count(where: where);

    return response;
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _where = null;
    _limit = null;
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
    _currentUser.add(await read(authUser.userId));
    _isLoggedIn = true;
  }

  void _loggedOut() {
    _currentUser.add(null);
    _isLoggedIn = false;
  }
}
