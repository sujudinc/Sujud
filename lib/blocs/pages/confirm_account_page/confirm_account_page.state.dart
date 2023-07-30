part of 'confirm_account_page.cubit.dart';

@freezed
class ConfirmAccountPageState with _$ConfirmAccountPageState {
  const factory ConfirmAccountPageState.initial() =
      ConfirmAccountPageStateInitial;
  const factory ConfirmAccountPageState.loading() =
      ConfirmAccountPageStateLoading;
  const factory ConfirmAccountPageState.success() =
      ConfirmAccountPageStateSuccess;
  const factory ConfirmAccountPageState.failure(
    AuthStateException exception,
  ) = ConfirmAccountPageStateFailure;
}
