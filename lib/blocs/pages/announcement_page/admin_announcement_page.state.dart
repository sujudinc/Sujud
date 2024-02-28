part of 'admin_announcement_page.cubit.dart';

@freezed
class AdminAnnouncementPageState with _$AdminAnnouncementPageState {
  const factory AdminAnnouncementPageState.loading() =
      AdminAnnouncementPageStateLoading;
  const factory AdminAnnouncementPageState.ready({
    required Announcement announcement,
  }) = AdminAnnouncementPageStateReady;
  const factory AdminAnnouncementPageState.failure({
    required AdminAnnouncementPageException exception,
  }) = AdminAnnouncementPageStateFailure;
}

enum AdminAnnouncementPageException {
  failedToLoadAnnouncement,
}
