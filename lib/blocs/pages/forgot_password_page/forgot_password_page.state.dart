part of 'forgot_password_page.cubit.dart';

@freezed
class ForgotPasswordPageState with _$ForgotPasswordPageState {
  const factory ForgotPasswordPageState.initial() =
      ForgotPasswordPageStateInitial;
  const factory ForgotPasswordPageState.loading() =
      ForgotPasswordPageStateLoading;
  const factory ForgotPasswordPageState.success() =
      ForgotPasswordPageStateSuccess;
  const factory ForgotPasswordPageState.failure(
    AuthStateException exception,
  ) = ForgotPasswordPageStateFailure;
}
