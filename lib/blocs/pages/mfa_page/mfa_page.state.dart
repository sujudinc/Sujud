part of 'mfa_page.cubit.dart';

@freezed
class MfaPageState with _$MfaPageState {
  const factory MfaPageState.initial() = MfaPageStateInitial;
  const factory MfaPageState.loading() = MfaPageStateLoading;
  const factory MfaPageState.success() = MfaPageStateSuccess;
  const factory MfaPageState.failure(
    AuthStateException exception,
  ) = MfaPageStateFailure;
}
