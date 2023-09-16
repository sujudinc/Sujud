part of 'home_page.cubit.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = HomePageStateInitial;
  const factory HomePageState.loading() = HomePageStateLoading;
  const factory HomePageState.ready() = HomePageStateReady;
  const factory HomePageState.failure() = HomePageStateFailure;
}
