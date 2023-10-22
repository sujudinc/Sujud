part of 'announcement_page.cubit.dart';

@freezed
class AnnouncementPageState with _$AnnouncementPageState {
  const factory AnnouncementPageState.loading() = AnnouncementPageStateLoading;
  const factory AnnouncementPageState.ready({
    required Announcement announcement,
  }) = AnnouncementPageStateReady;
  const factory AnnouncementPageState.failure({
    required AnnouncementPageException exception,
  }) = AnnouncementPageStateFailure;
}

enum AnnouncementPageException {
  failedToLoadAnnouncement,
}
