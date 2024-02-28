// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

abstract class AmplifyAuthServiceAbstract {
  Future<AuthUser?> get currentUser;
  void userStateChange({
    required Function(AuthUser) onSignedIn,
    required Function() onSignedOut,
    required Function() onSessionExpired,
    required Function() onUserDeleted,
  });

  Future<SignUpResult> register({
    required String username,
    required String password,
    required Map<AuthUserAttributeKey, String> userAttributes,
  });

  Future<SignUpResult> confirmUser({
    required String username,
    required String confirmationCode,
  });

  Future<ResendSignUpCodeResult> resendRegisterCode({
    required String username,
  });

  Future<SignInResult> login({
    required String username,
    required String password,
  });

  Future<SignInResult> loginWithSocial({
    AuthProvider? provider,
  });

  Future<SignInResult> confirmMFA({
    required String username,
    required String confirmationCode,
  });

  Future<ResetPasswordResult> resetPassword({
    required String username,
  });

  Future<ResetPasswordResult> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
  });

  Future<UpdatePasswordResult> updatePassword({
    required String oldPassword,
    required String newPassword,
  });

  Future<List<AuthUserAttribute>> fetchCurrentUserAttributes();

  Future<Map<AuthUserAttributeKey, UpdateUserAttributeResult>>
      updateUserAttributes({
    required List<AuthUserAttribute> attributes,
  });

  Future<ConfirmUserAttributeResult> verifyAttributeUpdate({
    required AuthUserAttributeKey attributeKey,
    required String confirmationCode,
  });

  Future<SendUserAttributeVerificationCodeResult> resendVerificationCode({
    required AuthUserAttributeKey key,
  });

  Future<SignOutResult> logout();

  Future<SignOutResult> logoutGlobally();
}
