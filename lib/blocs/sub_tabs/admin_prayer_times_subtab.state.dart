part of 'admin_prayer_times_subtab.cubit.dart';

@freezed
class AdminPrayerTimesSubtabState with _$AdminPrayerTimesSubtabState {
  const factory AdminPrayerTimesSubtabState.initial() =
      AdminPrayerTimesSubtabStateInitial;
  const factory AdminPrayerTimesSubtabState.loading() =
      AdminPrayerTimesSubtabStateLoading;
  const factory AdminPrayerTimesSubtabState.ready() =
      AdminPrayerTimesSubtabStateReady;
  const factory AdminPrayerTimesSubtabState.failure() =
      AdminPrayerTimesSubtabStateFailure;
}
