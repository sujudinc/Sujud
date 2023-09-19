// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'create_announcement_page.cubit.freezed.dart';
part 'create_announcement_page.state.dart';

class CreateAnnouncementPageCubit extends Cubit<CreateAnnouncementPageState> {
  CreateAnnouncementPageCubit()
      : _media = GetIt.instance.get<MediaUtilityAbstract>(),
        _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _toast = GetIt.instance.get<ToastUtilityAbstract>(),
        _announcementRepo = GetIt.instance.get<AnnouncementRepoAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const CreateAnnouncementPageState.initial());

  final MediaUtilityAbstract _media;
  final NavigationUtilityAbstract _navigation;
  final ToastUtilityAbstract _toast;
  final AnnouncementRepoAbstract _announcementRepo;
  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _userRepo;

  String? _title;
  String? _content;
  final _images = <AttributedFile>[];

  void get back => _navigation.back();
  User get currentUser => _userRepo.currentUser!;
  Mosque get selectedMosque => _mosqueRepo.selectedMosque!;
  List<AttributedFile> get images => _images;

  set title(String? value) {
    _title = value;
  }

  set content(String? value) {
    _content = value;
  }

  Future<void> addImage({
    required Source source,
    required StoragePath path,
  }) async {
    emit(
      source == Source.gallery
          ? const CreateAnnouncementPageState.loadingGallery()
          : const CreateAnnouncementPageState.loadingCamera(),
    );

    try {
      final image = await _media.image(source: source, path: path);

      if (image != null) {
        _images.add(image);
      }
    } catch (e) {
      emit(
        const CreateAnnouncementPageState.failure(
          CreateAnnouncementPageException.failedToLoadImage,
        ),
      );
    }

    emit(const CreateAnnouncementPageState.ready());
  }

  Future<void> removeImage(int index) async {
    emit(const CreateAnnouncementPageState.loadingSetter());

    _images.removeAt(index);

    emit(const CreateAnnouncementPageState.ready());
  }

  Future<void> create() async {
    if (state is CreateAnnouncementPageStateLoadingSend ||
        _title == null ||
        _content == null) {
      return;
    }

    emit(const CreateAnnouncementPageState.loadingSend());

    final (item, errors) = await _announcementRepo.create(
      Announcement(
        id: UUID.getUUID(),
        title: _title!,
        body: _content!,
        creator: _userRepo.currentUser!,
        mosque: _mosqueRepo.selectedMosque!,
      ),
      images: _images,
    );

    if (item != null && errors.isEmpty) {
      emit(const CreateAnnouncementPageState.ready());

      _navigation.back();
    } else {
      emit(
        const CreateAnnouncementPageState.failure(
          CreateAnnouncementPageException.failedToCreateAnnouncement,
        ),
      );
    }
  }

  CherryToast displayToast({required String title, required String message}) {
    final toast = _toast.show(
      title: title,
      message: message,
      type: ToastType.error,
    );

    return toast;
  }
}
