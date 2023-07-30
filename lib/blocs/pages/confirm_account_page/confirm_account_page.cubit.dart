import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/exceptions/exceptions.dart';

part 'confirm_account_page.state.dart';
part 'confirm_account_page.cubit.freezed.dart';

class ConfirmAccountPageCubit extends Cubit<ConfirmAccountPageState> {
  ConfirmAccountPageCubit()
      : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const ConfirmAccountPageState.initial());

  final LoggerUtilityAbstract _logger;
  final UserRepoAbstract _userRepo;

  String? username;
  String? confirmationCode;

  Future<void> confirmAccount() async {
    if (state is ConfirmAccountPageStateLoading &&
        username != null &&
        confirmationCode != null) {
      return;
    }

    emit(const ConfirmAccountPageState.loading());

    final result = await _userRepo.confirmUser(
      username: username!,
      confirmationCode: confirmationCode!,
    );

    _handleRegisterResult(result);
  }

  Future<void> resendConfirmationCode() async {
    if (state is ConfirmAccountPageStateLoading && username != null) {
      return;
    }

    emit(const ConfirmAccountPageState.loading());

    final result = await _userRepo.resendRegisterCode(username: username!);

    _handleCodeDelivery(result.codeDeliveryDetails);
  }

  void _handleRegisterResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        _handleCodeDelivery(result.nextStep.codeDeliveryDetails!);
        break;
      case AuthSignUpStep.done:
        _logger.log('Sign up is complete');
        break;
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails details) {
    _logger.log(
      'A confirmation code has been sent to: ${details.destination}. '
      'Please check your ${details.deliveryMedium.name} for the code.',
    );
  }
}
