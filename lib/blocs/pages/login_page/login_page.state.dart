part of 'login_page.cubit.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState.initial() = LoginPageStateInitial;
  const factory LoginPageState.loading() = LoginPageStateLoading;
  const factory LoginPageState.success(User user) = LoginPageStateSuccess;
  const factory LoginPageState.failure(
    AuthStateException exception,
  ) = LoginPageStateFailure;
}
