import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/exceptions/exceptions.dart';
import 'package:sujud/models/models.dart';

part 'register_page.state.dart';
part 'register_page.cubit.freezed.dart';

class RegisterPageCubit extends Cubit<RegisterPageState> {
  RegisterPageCubit()
      : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const RegisterPageState.initial());

  final LoggerUtilityAbstract _logger;
  final UserRepoAbstract _userRepo;

  Future<void> register({
    required String firstName,
    required String lastName,
    required String username,
    required String password,
    UserType type = UserType.ADMIN,
  }) async {
    emit(const RegisterPageState.loading());

    try {
      final result = await _userRepo.register(
        username: username,
        password: password,
        userAttributes: <AuthUserAttributeKey, String>{
          AuthUserAttributeKey.name: '$firstName $lastName',
          AuthUserAttributeKey.givenName: firstName,
          AuthUserAttributeKey.familyName: lastName,
          AuthUserAttributeKey.email: username,
          const CognitoUserAttributeKey.custom('custom:user_type'): type.name,
        },
      );

      _handleRegisterResult(result);
    } on AliasExistsException {
      emit(
        const RegisterPageState.failure(AuthStateException.aliasExists),
      );
    } on InvalidParameterException {
      emit(
        const RegisterPageState.failure(AuthStateException.invalidParameter),
      );
    } on InvalidPasswordException {
      emit(
        const RegisterPageState.failure(AuthStateException.invalidPassword),
      );
    } on UsernameExistsException {
      emit(
        const RegisterPageState.failure(AuthStateException.usernameExists),
      );
    } on LimitExceededException {
      emit(
        const RegisterPageState.failure(AuthStateException.limitExceeded),
      );
    } on InvalidEmailRoleAccessPolicyException {
      emit(
        const RegisterPageState.failure(
          AuthStateException.invalidEmailRoleAccessPolicy,
        ),
      );
    } on InvalidSmsRoleAccessPolicyException {
      emit(
        const RegisterPageState.failure(
          AuthStateException.invalidSmsRoleAccessPolicy,
        ),
      );
    } on InvalidUserPoolConfigurationException {
      emit(
        const RegisterPageState.failure(
          AuthStateException.invalidUserPoolConfiguration,
        ),
      );
    } catch (e) {
      emit(
        const RegisterPageState.failure(AuthStateException.unknownException),
      );
    }
  }

  void _handleRegisterResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        _logger.log('Sign up is complete');
        break;
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails details) {
    _logger.log(
      'A confirmation code has been sent to: '
      '${details.destination}. Please check your '
      '${details.deliveryMedium.name} for the code.',
    );
  }
}
