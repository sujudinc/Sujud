import 'dart:async';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/exceptions/exceptions.dart';
import 'package:sujud/models/models.dart';

part 'auth.state.dart';
part 'auth.cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _toast = GetIt.instance.get<ToastUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const AuthState.ready()) {
    _navigation.navigationPathStream.listen((navigationPath) {
      final queryParameters = navigationPath.queryParameters;

      if (queryParameters == null) {
        return;
      }

      firstName = queryParameters['firstName'];
      lastName = queryParameters['lastName'];
      username = queryParameters['username'];
    });
  }

  final LoggerUtilityAbstract _logger;
  final NavigationUtilityAbstract _navigation;
  final ToastUtilityAbstract _toast;
  final UserRepoAbstract _userRepo;

  String? firstName;
  String? lastName;
  String? username;
  String? password;
  String? confirmationCode;

  bool confirmationCodeSent = false;

  User? get currentUser => _userRepo.currentUser;
  NavigationRoutes get routes => _navigation.navigationRoutes;

  void get back => _navigation.back();

  void get toOnboardingPage => _navigation.go(
        path: NavigationPath(
          route: routes.onboarding.itself,
        ),
      );

  void get toForgotPasswordPage => _navigation.go(
        path: NavigationPath(
          route: routes.auth.forgot,
          queryParameters: <String, String>{
            if (username != null) 'email': username!,
          },
        ),
      );

  void get toRegisterPage => _navigation.go(
        path: NavigationPath(
          route: routes.auth.register.itself,
          queryParameters: <String, String>{
            if (username != null) 'email': username!,
          },
        ),
      );

  void get toConfirmationPage => _navigation.go(
        path: NavigationPath(
          route: routes.auth.confirm,
          section: 'email',
          queryParameters: <String, String>{
            if (username != null) 'email': username!,
          },
        ),
      );

  Future<void> register({UserType type = UserType.ADMIN}) async {
    if (state is AuthStateLoading ||
        username == null ||
        password == null ||
        firstName == null ||
        lastName == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.register(
        username: username!,
        password: password!,
        userAttributes: <AuthUserAttributeKey, String>{
          AuthUserAttributeKey.name: '$firstName $lastName',
          AuthUserAttributeKey.givenName: firstName!,
          AuthUserAttributeKey.familyName: lastName!,
          AuthUserAttributeKey.email: username!,
          const CognitoUserAttributeKey.custom('custom:user_type'): type.name,
        },
      );

      _handleRegisterResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> confirmAccount() async {
    if (state is AuthStateLoading ||
        username == null ||
        confirmationCode == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.confirmUser(
        username: username!,
        confirmationCode: confirmationCode!,
      );

      _handleRegisterResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> resendConfirmationCode() async {
    if (state is AuthStateLoading || username == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.resendRegisterCode(username: username!);

      _handleCodeDelivery(result.codeDeliveryDetails);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> login() async {
    if (state is AuthStateLoading || username == null || password == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.login(
        username: username!,
        password: password!,
      );

      _handleLoginResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> confirmMFA() async {
    if (state is AuthStateLoading ||
        username == null ||
        confirmationCode == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.confirmMFA(
        username: username!,
        confirmationCode: confirmationCode!,
      );

      _handleLoginResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> resetPassword() async {
    if (state is AuthStateLoading || username == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.resetPassword(username: username!);

      _handleResetPasswordResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  Future<void> confirmResetPassword({required String newPassword}) async {
    if (state is AuthStateLoading || username == null) {
      return;
    }

    emit(const AuthState.loading());

    try {
      final result = await _userRepo.confirmResetPassword(
        username: username!,
        confirmationCode: confirmationCode!,
        newPassword: newPassword,
      );

      _handleResetPasswordResult(result);
    } catch (exception) {
      emit(_convertExceptionToFailureState(exception));
    }
  }

  CherryToast displayToast({required String title, required String message}) {
    final toast = _toast.show(
      title: title,
      message: message,
      type: ToastType.error,
    );

    return toast;
  }

  void _handleRegisterResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        _handleCodeDelivery(result.nextStep.codeDeliveryDetails!);
        break;
      case AuthSignUpStep.done:
        _logger.log('Sign up is complete');

        emit(const AuthState.ready());
        break;
    }
  }

  Future<void> _handleLoginResult(SignInResult result) async {
    switch (result.nextStep.signInStep) {
      case AuthSignInStep.confirmSignInWithSmsMfaCode:
        return _handleSmsMfaCodeEvent(result.nextStep);
      case AuthSignInStep.confirmSignInWithNewPassword:
        return _handleNewPasswordEvent(result.nextStep);
      case AuthSignInStep.confirmSignInWithCustomChallenge:
        return _handleCustomChallengeEvent(result.nextStep);
      case AuthSignInStep.resetPassword:
        return await resetPassword();
      case AuthSignInStep.confirmSignUp:
        return await _handleConfirmSignUpEvent(result.nextStep);
      case AuthSignInStep.done:
        return _handleDoneEvent();
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails details) {
    emit(const AuthState.ready());

    _logger.log(
      'A confirmation code has been sent to: ${details.destination}. '
      'Please check your ${details.deliveryMedium.name} for the code.',
    );

    if (_navigation.currentPath.route.location ==
        routes.auth.register.itself.location) {
      toConfirmationPage;
    }

    confirmationCodeSent = true;
  }

  void _handleSmsMfaCodeEvent(AuthNextStep nextStep) {
    _logger.log('confirmSignInWithSmsMfaCode');

    _navigation.go(
      path: NavigationPath(
        route: routes.auth.mfa,
      ),
    );

    emit(const AuthState.ready());
  }

  void _handleNewPasswordEvent(AuthNextStep nextStep) {
    _logger.log('confirmNewPasswordEvent');

    emit(const AuthState.ready());
  }

  void _handleResetPasswordResult(ResetPasswordResult result) {
    emit(const AuthState.ready());

    switch (result.nextStep.updateStep) {
      case AuthResetPasswordStep.confirmResetPasswordWithCode:
        final details = result.nextStep.codeDeliveryDetails!;

        confirmationCodeSent = true;

        _logger.log(
          'A confirmation code has been sent to: '
          '${details.destination}. Please check your '
          '${details.deliveryMedium.name} for the code.',
        );

        toConfirmationPage;

        break;
      case AuthResetPasswordStep.done:
        _logger.log('Successfully reset password');
        break;
    }
  }

  void _handleCustomChallengeEvent(AuthNextStep nextStep) {
    _logger
      ..log('confirmSignInWithCustomChallenge')
      ..log(nextStep.additionalInfo);

    emit(const AuthState.ready());
  }

  Future<void> _handleConfirmSignUpEvent(AuthNextStep nextStep) async {
    _logger.log('confirmSignUp');

    final result = await _userRepo.resendRegisterCode(
      username: username!,
    );

    final details = result.codeDeliveryDetails;

    _logger.log(
      'A confirmation code has been sent to: ${details.destination}. '
      'Please check your ${details.deliveryMedium.name} for the code.',
    );

    emit(const AuthState.ready());

    toConfirmationPage;
  }

  void _handleDoneEvent() {
    _logger.log('User is signed in');

    emit(const AuthState.ready());
  }

  AuthState _convertExceptionToFailureState(exception) {
    if (exception is AuthNotAuthorizedException) {
      return const AuthState.failure(AuthStateException.notAuthorized);
    } else if (exception is InternalErrorException) {
      return const AuthState.failure(AuthStateException.internalError);
    } else if (exception is InvalidParameterException) {
      return const AuthState.failure(AuthStateException.invalidParameter);
    } else if (exception is InvalidPasswordException) {
      return const AuthState.failure(AuthStateException.invalidPassword);
    } else if (exception is LimitExceededException) {
      return const AuthState.failure(AuthStateException.limitExceeded);
    } else if (exception is PasswordResetRequiredException) {
      return const AuthState.failure(AuthStateException.passwordResetRequired);
    } else if (exception is TooManyFailedAttemptsException) {
      return const AuthState.failure(AuthStateException.tooManyFailedAttempts);
    } else if (exception is TooManyRequestsException) {
      return const AuthState.failure(AuthStateException.tooManyRequests);
    } else if (exception is UnauthorizedException) {
      return const AuthState.failure(AuthStateException.unauthorized);
    } else if (exception is UserNotConfirmedException) {
      return const AuthState.failure(AuthStateException.userNotConfirmed);
    } else if (exception is UserNotFoundException) {
      return const AuthState.failure(AuthStateException.userNotFound);
    } else if (exception is UsernameExistsException) {
      return const AuthState.failure(AuthStateException.usernameExists);
    } else {
      return const AuthState.failure(AuthStateException.unknownException);
    }
  }
}
