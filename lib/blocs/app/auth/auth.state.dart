part of 'auth.cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.ready() = AuthStateReady;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.failure(AuthStateException exception) =
      AuthStateFailure;
}
