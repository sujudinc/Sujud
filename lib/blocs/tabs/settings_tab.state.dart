part of 'settings_tab.cubit.dart';

@freezed
class SettingsTabState with _$SettingsTabState {
  const factory SettingsTabState.initial() = SettingsTabStateInitial;
  const factory SettingsTabState.loading() = SettingsTabStateLoading;
  const factory SettingsTabState.loadingLogout() =
      SettingsTabStateLoadingLogout;
  const factory SettingsTabState.ready() = SettingsTabStateReady;
  const factory SettingsTabState.failure() = SettingsTabStateFailure;
}
