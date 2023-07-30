import 'package:flutter/material.dart';
import 'package:sujud/exceptions/exceptions.dart';
import 'package:sujud/extensions/extensions.dart';

extension AuthStateExceptionX on AuthStateException {
  String name(BuildContext context) {
    final i18n = context.i18n;

    switch (this) {
      case AuthStateException.aliasExists:
        return i18n.exceptionAuthAliasExists;
      case AuthStateException.internalError:
        return i18n.exceptionAuthInternalError;
      case AuthStateException.invalidParameter:
        return i18n.exceptionAuthInvalidParameter;
      case AuthStateException.invalidPassword:
        return i18n.exceptionAuthInvalidPassword;
      case AuthStateException.invalidEmailRoleAccessPolicy:
        return i18n.exceptionAuthInvalidEmailRoleAccessPolicy;
      case AuthStateException.invalidSmsRoleAccessPolicy:
        return i18n.exceptionAuthInvalidSmsRoleAccessPolicy;
      case AuthStateException.invalidUserPoolConfiguration:
        return i18n.exceptionAuthInvalidUserPoolConfiguration;
      case AuthStateException.limitExceeded:
        return i18n.exceptionAuthLimitExceeded;
      case AuthStateException.notAuthorized:
        return i18n.exceptionAuthNotAuthorized;
      case AuthStateException.passwordResetRequired:
        return i18n.exceptionAuthPasswordResetRequired;
      case AuthStateException.tooManyFailedAttempts:
        return i18n.exceptionAuthTooManyFailedAttempts;
      case AuthStateException.tooManyRequests:
        return i18n.exceptionAuthTooManyRequests;
      case AuthStateException.unauthorized:
        return i18n.exceptionAuthUnauthorized;
      case AuthStateException.userNotConfirmed:
        return i18n.exceptionAuthUserNotConfirmed;
      case AuthStateException.userNotFound:
        return i18n.exceptionAuthUserNotFound;
      case AuthStateException.usernameExists:
        return i18n.exceptionAuthUsernameExists;
      case AuthStateException.unknownException:
        return i18n.exceptionAuthUnknownException;
    }
  }
}
