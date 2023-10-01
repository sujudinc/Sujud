part of 'dashboard_tab.cubit.dart';

@freezed
class DashboardTabState with _$DashboardTabState {
  const factory DashboardTabState.loading() = DashboardTabStateLoading;
  const factory DashboardTabState.empty() = DashboardTabStateEmpty;
  const factory DashboardTabState.ready({
    required Mosque selectedMosque,
  }) = DashboardTabStateReady;
  const factory DashboardTabState.failure() = DashboardTabStateFailure;
}
