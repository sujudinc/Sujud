// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'admin_announcement_page.cubit.freezed.dart';
part 'admin_announcement_page.state.dart';

class AdminAnnouncementPageCubit extends Cubit<AdminAnnouncementPageState> {
  AdminAnnouncementPageCubit({required String id})
      : _id = id,
        _announcementRepo = GetIt.instance.get<AdminAnnouncementRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        super(const AdminAnnouncementPageState.loading()) {
    init();
  }

  final String _id;
  final AdminAnnouncementRepoAbstract _announcementRepo;
  final UserRepoAbstract _userRepo;
  final AmplifyStorageServiceAbstract _storageService;

  User? get currentUser => _userRepo.currentUser;

  Future<void> init() async {
    emit(const AdminAnnouncementPageState.loading());

    final (announcement, errors) = await _announcementRepo.get(id: _id);

    if (errors.isNotEmpty) {
      emit(
        const AdminAnnouncementPageState.failure(
          exception: AdminAnnouncementPageException.failedToLoadAnnouncement,
        ),
      );
      return;
    }

    emit(
      AdminAnnouncementPageState.ready(
        announcement: announcement!,
      ),
    );
  }

  Future<String> getImageUrl({required String id, required String key}) async {
    final uri = await _storageService.getUri(key: key);

    return uri.toString();
  }
}
