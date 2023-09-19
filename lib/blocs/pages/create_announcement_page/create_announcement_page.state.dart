part of 'create_announcement_page.cubit.dart';

@freezed
class CreateAnnouncementPageState with _$CreateAnnouncementPageState {
  const factory CreateAnnouncementPageState.initial() =
      CreateAnnouncementPageStateInitial;
  const factory CreateAnnouncementPageState.loadingSetter() =
      CreateAnnouncementPageStateLoadingSetter;
  const factory CreateAnnouncementPageState.loadingGallery() =
      CreateAnnouncementPageStateLoadingGallery;
  const factory CreateAnnouncementPageState.loadingCamera() =
      CreateAnnouncementPageStateLoadingCamera;
  const factory CreateAnnouncementPageState.loadingSend() =
      CreateAnnouncementPageStateLoadingSend;
  const factory CreateAnnouncementPageState.ready() =
      CreateAnnouncementPageStateReady;
  const factory CreateAnnouncementPageState.failure(
    CreateAnnouncementPageException exception,
  ) = CreateAnnouncementPageStateError;
}

enum CreateAnnouncementPageException {
  failedToCreateAnnouncement,
  failedToLoadImage,
}
