import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/exceptions/exceptions.dart';

part 'forgot_password_page.state.dart';
part 'forgot_password_page.cubit.freezed.dart';

class ForgotPasswordPageCubit extends Cubit<ForgotPasswordPageState> {
  ForgotPasswordPageCubit()
      : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const ForgotPasswordPageState.initial());

  final LoggerUtilityAbstract _logger;
  final UserRepoAbstract _userRepo;

  Future<void> resetPassword({required String username}) async {
    final result = await _userRepo.resetPassword(username: username);

    _handleResetPasswordResult(result);
  }

  Future<void> confirmResetPassword({
    required String username,
    required String newPassword,
    required String confirmationCode,
  }) async {
    final result = await _userRepo.confirmResetPassword(
      username: username,
      newPassword: newPassword,
      confirmationCode: confirmationCode,
    );

    _handleResetPasswordResult(result);
  }

  void _handleResetPasswordResult(ResetPasswordResult result) {
    switch (result.nextStep.updateStep) {
      case AuthResetPasswordStep.confirmResetPasswordWithCode:
        final details = result.nextStep.codeDeliveryDetails!;

        _logger.log(
          'A confirmation code has been sent to: '
          '${details.destination}. Please check your '
          '${details.deliveryMedium.name} for the code.',
        );
        break;
      case AuthResetPasswordStep.done:
        _logger.log('Successfully reset password');
        break;
    }
  }
}
