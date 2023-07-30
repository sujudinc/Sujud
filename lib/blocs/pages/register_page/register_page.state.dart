part of 'register_page.cubit.dart';

@freezed
class RegisterPageState with _$RegisterPageState {
  const factory RegisterPageState.initial() = RegisterPageStateInitial;
  const factory RegisterPageState.loading() = RegisterPageStateLoading;
  const factory RegisterPageState.success() = RegisterPageStateSuccess;
  const factory RegisterPageState.failure(
    AuthStateException exception,
  ) = RegisterPageStateFailure;
}
