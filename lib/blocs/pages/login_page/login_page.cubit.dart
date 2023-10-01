// 📦 Package imports:
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/exceptions/exceptions.dart';
import 'package:sujud/models/models.dart';

part 'login_page.cubit.freezed.dart';
part 'login_page.state.dart';

class LoginPageCubit extends Cubit<LoginPageState> {
  LoginPageCubit()
      : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const LoginPageState.initial());

  final LoggerUtilityAbstract _logger;
  final NavigationUtilityAbstract _navigation;
  final UserRepoAbstract _userRepo;

  String? username;
  String? password;

  Future<void> login() async {
    if (state is LoginPageStateLoading &&
        username != null &&
        password != null) {
      return;
    }

    emit(const LoginPageState.loading());

    try {
      final result = await _userRepo.login(
        username: username!,
        password: password!,
      );

      _handleResult(result);
    } on AuthNotAuthorizedException {
      emit(
        const LoginPageState.failure(AuthStateException.notAuthorized),
      );
    } on InternalErrorException {
      emit(
        const LoginPageState.failure(AuthStateException.internalError),
      );
    } on InvalidParameterException {
      emit(
        const LoginPageState.failure(AuthStateException.invalidParameter),
      );
    } on InvalidPasswordException {
      emit(
        const LoginPageState.failure(AuthStateException.invalidPassword),
      );
    } on LimitExceededException {
      emit(
        const LoginPageState.failure(AuthStateException.limitExceeded),
      );
    } on PasswordResetRequiredException {
      emit(
        const LoginPageState.failure(AuthStateException.passwordResetRequired),
      );
    } on TooManyFailedAttemptsException {
      emit(
        const LoginPageState.failure(AuthStateException.tooManyFailedAttempts),
      );
    } on TooManyRequestsException {
      emit(
        const LoginPageState.failure(AuthStateException.tooManyRequests),
      );
    } on UnauthorizedException {
      emit(
        const LoginPageState.failure(AuthStateException.unauthorized),
      );
    } on UserNotConfirmedException {
      emit(
        const LoginPageState.failure(AuthStateException.userNotConfirmed),
      );
    } on UserNotFoundException {
      emit(
        const LoginPageState.failure(AuthStateException.userNotFound),
      );
    } on UsernameExistsException {
      emit(
        const LoginPageState.failure(AuthStateException.usernameExists),
      );
    } catch (e) {
      emit(
        const LoginPageState.failure(AuthStateException.unknownException),
      );
    }
  }

  Future<void> _handleResult(SignInResult result) async {
    switch (result.nextStep.signInStep) {
      case AuthSignInStep.confirmSignInWithSmsMfaCode:
        _handleConfirmSignInWithSmsMfaCodeEvent(
          result.nextStep.codeDeliveryDetails!,
        );
        break;
      case AuthSignInStep.confirmSignInWithNewPassword:
        _handleConfirmSignInWithNewPassword();
        break;
      case AuthSignInStep.confirmSignInWithCustomChallenge:
        _handleConfirmSignInWithCustomChallenge(
          result.nextStep.additionalInfo,
        );
        break;
      case AuthSignInStep.resetPassword:
        await _handleResetPasswordEvent();
        break;
      case AuthSignInStep.confirmSignUp:
        await _handleConfirmSignUpEvent();
        break;
      case AuthSignInStep.continueSignInWithMfaSelection:
        return;
      case AuthSignInStep.continueSignInWithTotpSetup:
        return;
      case AuthSignInStep.confirmSignInWithTotpMfaCode:
        return;
      case AuthSignInStep.done:
        _handleDoneEvent();
        break;
    }
  }

  void _handleConfirmSignInWithSmsMfaCodeEvent(
    AuthCodeDeliveryDetails details,
  ) {
    _logger.log('confirmSignInWithSmsMfaCode');

    _navigation.go(
      path: NavigationPath(
        route: NavigationRoutes().login.mfa,
      ),
    );
    emit(const LoginPageState.initial());
  }

  void _handleConfirmSignInWithNewPassword() {
    _logger.log('confirmNewPasswordEvent');
    emit(const LoginPageState.initial());
  }

  void _handleConfirmSignInWithCustomChallenge(Map<String, String> parameters) {
    _logger
      ..log('confirmSignInWithCustomChallenge')
      ..log(parameters);
    emit(const LoginPageState.initial());
  }

  Future<void> _handleResetPasswordEvent() async {
    _logger.log('resetPassword');
    final result = await _userRepo.resetPassword(
      username: username!,
    );

    switch (result.nextStep.updateStep) {
      case AuthResetPasswordStep.confirmResetPasswordWithCode:
        final details = result.nextStep.codeDeliveryDetails!;

        _logger
          ..log('confirmResetPasswordWithCode')
          ..log(
            'A confirmation code has been sent to: '
            '${details.destination}. Please check your '
            '${details.deliveryMedium.name} for the code.',
          );

        emit(const LoginPageState.initial());

        _navigation.go(
          path: NavigationPath(
            route: NavigationRoutes().login.forgot,
          ),
        );

        break;
      case AuthResetPasswordStep.done:
        _logger.log('Successfully reset password');
        emit(const LoginPageState.initial());
        break;
    }
  }

  Future<void> _handleConfirmSignUpEvent() async {
    _logger.log('confirmSignUp');
    final result = await _userRepo.resendRegisterCode(
      username: username!,
    );

    final details = result.codeDeliveryDetails;

    _logger.log(
      'A confirmation code has been sent to: ${details.destination}. '
      'Please check your ${details.deliveryMedium.name} for the code.',
    );

    emit(const LoginPageState.initial());

    _navigation.go(
      path: NavigationPath(
        route: NavigationRoutes().login.confirm,
        section: 'email',
        queryParameters: <String, String>{
          'username': username!,
        },
      ),
    );

    _logger.log('Successfully resent confirmation code');
  }

  void _handleDoneEvent() {
    _logger.log('User is signed in');
    emit(LoginPageState.success(_userRepo.currentUser!));
  }
}
