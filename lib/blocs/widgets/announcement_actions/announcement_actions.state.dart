part of 'announcement_actions.cubit.dart';

@freezed
class AnnouncementActionsState with _$AnnouncementActionsState {
  const factory AnnouncementActionsState.ready({
    required bool isLiked,
    required bool isBookmarked,
  }) = AnnouncementActionsStateReady;
}

enum AnnouncementActionsException {
  failedToLikeAnnouncement,
  failedToUnlikeAnnouncement,
  failedToShareAnnouncement,
  failedToBookmarkAnnouncement,
}
