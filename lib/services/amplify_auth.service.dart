// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyAuthService implements AmplifyAuthServiceAbstract {
  AmplifyAuthService({AuthCategory? amplifyAuth})
      : _amplifyAuth = amplifyAuth ?? Amplify.Auth;

  final AuthCategory _amplifyAuth;

  @override
  Future<AuthUser?> get currentUser => _amplifyAuth.getCurrentUser();

  @override
  void userStateChange({
    required Function(AuthUser p1) onSignedIn,
    required Function() onSignedOut,
    required Function() onSessionExpired,
    required Function() onUserDeleted,
  }) {
    Amplify.Hub.listen(
      HubChannel.Auth,
      (event) {
        switch (event.type) {
          case AuthHubEventType.signedIn:
            onSignedIn(event.payload!);
            break;
          case AuthHubEventType.signedOut:
            onSignedOut();
            break;
          case AuthHubEventType.sessionExpired:
            onSessionExpired();
            break;
          case AuthHubEventType.userDeleted:
            onUserDeleted();
            break;
        }
      },
    );
  }

  @override
  Future<SignUpResult> register({
    required String username,
    required String password,
    required Map<AuthUserAttributeKey, String> userAttributes,
  }) async {
    final result = await _amplifyAuth.signUp(
      username: username,
      password: password,
      options: SignUpOptions(userAttributes: userAttributes),
    );

    return result;
  }

  @override
  Future<SignInResult> confirmMFA({
    required String username,
    required String confirmationCode,
  }) async {
    final result = await _amplifyAuth.confirmSignIn(
      confirmationValue: confirmationCode,
    );

    return result;
  }

  @override
  Future<SignUpResult> confirmUser({
    required String username,
    required String confirmationCode,
  }) async {
    final result = await _amplifyAuth.confirmSignUp(
      username: username,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<SignInResult> login({
    required String username,
    required String password,
  }) async {
    final result = await _amplifyAuth.signIn(
      username: username,
      password: password,
    );

    return result;
  }

  @override
  Future<SignInResult> loginWithSocial({
    AuthProvider? provider,
    SignInWithWebUIOptions? options,
  }) async {
    final result = await _amplifyAuth.signInWithWebUI(
      provider: provider,
      options: options,
    );

    return result;
  }

  @override
  Future<ResetPasswordResult> resetPassword({
    required String username,
    ResetPasswordOptions? options,
  }) async {
    final result = await _amplifyAuth.resetPassword(
      username: username,
      options: options,
    );

    return result;
  }

  @override
  Future<ResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
  }) async {
    final result = await _amplifyAuth.confirmResetPassword(
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
    final result = await _amplifyAuth.updatePassword(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );

    return result;
  }

  @override
  Future<SignOutResult> logout() async {
    final result = await _amplifyAuth.signOut();

    return result;
  }

  @override
  Future<SignOutResult> logoutGlobally() async {
    final result = await _amplifyAuth.signOut(
      options: const SignOutOptions(globalSignOut: true),
    );

    return result;
  }

  @override
  Future<List<AuthUserAttribute>> fetchCurrentUserAttributes() async {
    final result = await _amplifyAuth.fetchUserAttributes();

    return result;
  }

  @override
  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
  }) async {
    final result = await _amplifyAuth.updateUserAttributes(
      attributes: attributes,
    );

    return result;
  }

  @override
  Future<ConfirmUserAttributeResult> verifyAttributeUpdate({
    required AuthUserAttributeKey attributeKey,
    required String confirmationCode,
  }) async {
    final result = await _amplifyAuth.confirmUserAttribute(
      userAttributeKey: attributeKey,
      confirmationCode: confirmationCode,
    );

    return result;
  }

  @override
  Future<ResendSignUpCodeResult> resendRegisterCode({
    required String username,
  }) {
    final result = _amplifyAuth.resendSignUpCode(
      username: username,
    );

    return result;
  }

  @override
  Future<SendUserAttributeVerificationCodeResult> resendVerificationCode({
    required AuthUserAttributeKey key,
  }) async {
    final result = await _amplifyAuth.sendUserAttributeVerificationCode(
      userAttributeKey: key,
    );

    return result;
  }
}
