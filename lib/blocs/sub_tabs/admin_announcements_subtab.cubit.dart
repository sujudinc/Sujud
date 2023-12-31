import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'admin_announcements_subtab.cubit.freezed.dart';
part 'admin_announcements_subtab.state.dart';

class AdminAnnouncementsSubtabCubit
    extends Cubit<AdminAnnouncementsSubtabState> {
  AdminAnnouncementsSubtabCubit()
      : _announcementRepo = GetIt.instance.get<AnnouncementRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        _networkUtility = GetIt.instance.get<NetworkUtilityAbstract>(),
        super(const AdminAnnouncementsSubtabState.loading()) {
    init();
  }

  final AnnouncementRepoAbstract _announcementRepo;
  final UserRepoAbstract _userRepo;
  final MosqueRepoAbstract _mosqueRepo;
  final AmplifyStorageServiceAbstract _storageService;
  final NetworkUtilityAbstract _networkUtility;

  Mosque? get selectedMosque => _mosqueRepo.selectedMosque;

  Future<void> init() async {
    emit(const AdminAnnouncementsSubtabState.loading());

    _networkUtility.onConnectivityChanged(
      onConnected: () async {
        await _announcementRepo.list(
          variables: <String, dynamic>{
            'mosqueId': selectedMosque!.id,
            'creatorId': _userRepo.currentUser!.id,
          },
        );

        _emitSuccessfulState();

        _announcementRepo.subscribe(
          onCreated: (announcement) => _emitSuccessfulState(),
          onUpdated: (announcement) => _emitSuccessfulState(),
          onDeleted: (announcement) => _emitSuccessfulState(),
        );
      },
      onDisconnected: _emitSuccessfulState,
    );

    _emitSuccessfulState();
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

  @override
  Future<void> close() {
    _announcementRepo.dispose();

    return super.close();
  }

  void _emitSuccessfulState() {
    emit(
      _announcementRepo.items.isNotEmpty
          ? AdminAnnouncementsSubtabState.ready(
              announcements: _announcementRepo.items,
            )
          : const AdminAnnouncementsSubtabState.empty(),
    );
  }
}
