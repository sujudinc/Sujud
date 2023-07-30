part of 'create_mosque_page.cubit.dart';

@freezed
class CreateMosquePageState with _$CreateMosquePageState {
  const factory CreateMosquePageState.ready() = CreateMosquePageStateReady;
  const factory CreateMosquePageState.loading() = CreateMosquePageStateLoading;
  const factory CreateMosquePageState.failure(
    CreateMosquePageException exception,
  ) = CreateMosquePageStateFailure;
}

enum CreateMosquePageException {
  failedToCreateMosque,
}
