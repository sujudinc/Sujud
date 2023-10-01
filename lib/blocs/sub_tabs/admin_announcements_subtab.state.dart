part of 'admin_announcements_subtab.cubit.dart';

@freezed
class AdminAnnouncementsSubtabState with _$AdminAnnouncementsSubtabState {
  const factory AdminAnnouncementsSubtabState.loading() =
      AdminAnnouncementsSubtabStateLoading;
  const factory AdminAnnouncementsSubtabState.empty() =
      AdminAnnouncementsSubtabStateEmpty;
  const factory AdminAnnouncementsSubtabState.ready({
    required List<Announcement> announcements,
  }) = AdminAnnouncementsSubtabStateReady;
  const factory AdminAnnouncementsSubtabState.failure() =
      AdminAnnouncementsSubtabStateFailure;
}
