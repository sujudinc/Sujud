import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'announcement_page.cubit.freezed.dart';
part 'announcement_page.state.dart';

class AnnouncementPageCubit extends Cubit<AnnouncementPageState> {
  AnnouncementPageCubit({required String id})
      : _id = id,
        _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _announcementRepo = GetIt.instance.get<AnnouncementRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        super(const AnnouncementPageState.loading()) {
    init();
  }

  final String _id;
  final NavigationUtilityAbstract _navigation;
  final AnnouncementRepoAbstract _announcementRepo;
  final UserRepoAbstract _userRepo;
  final AmplifyStorageServiceAbstract _storageService;

  void get back => _navigation.back();
  User? get currentUser => _userRepo.currentUser;

  Future<void> init() async {
    emit(const AnnouncementPageState.loading());

    final (announcement, errors) = await _announcementRepo.get(_id);

    if (errors.isNotEmpty) {
      emit(
        const AnnouncementPageState.failure(
          exception: AnnouncementPageException.failedToLoadAnnouncement,
        ),
      );
      return;
    }

    emit(
      AnnouncementPageState.ready(
        announcement: announcement!,
      ),
    );
  }

  Future<String> getImageUrl({required String id, required String key}) async {
    if (_announcementRepo.cachedImages.containsKey(id)) {
      final cachedImages = _announcementRepo.cachedImages[id]!;

      if (cachedImages[key] != null) {
        return cachedImages[key]!.toString();
      }
    }

    final uri = await _storageService.getUri(key: key);

    _announcementRepo.setCachedImage(id: id, key: key, url: uri);

    return uri.toString();
  }
}
