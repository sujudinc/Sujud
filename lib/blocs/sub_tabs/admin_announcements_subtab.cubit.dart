import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

part 'admin_announcements_subtab.cubit.freezed.dart';
part 'admin_announcements_subtab.state.dart';

class AdminAnnouncementsSubtabCubit
    extends Cubit<AdminAnnouncementsSubtabState> {
  AdminAnnouncementsSubtabCubit()
      : _announcementRepo = GetIt.instance.get<AnnouncementRepoAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _navigationUtility = GetIt.instance.get<NavigationUtilityAbstract>(),
        super(const AdminAnnouncementsSubtabState.loading()) {
    hydrate();
  }

  final AnnouncementRepoAbstract _announcementRepo;
  final MosqueRepoAbstract _mosqueRepo;
  final NavigationUtilityAbstract _navigationUtility;

  Mosque? get selectedMosque => _mosqueRepo.selectedMosque;

  void get goToCreateAnnouncementPage {
    _navigationUtility.push(
      path: NavigationPath(
        route: _navigationUtility
            .navigationRoutes.home.admin.dashboard.createAnnouncement,
      ),
    );
  }

  Future<void> hydrate() async {
    emit(const AdminAnnouncementsSubtabState.loading());

    if (selectedMosque != null) {
      await _announcementRepo.list(
        filter: <String, dynamic>{
          'mosqueId': {
            FilterOperation.eq.name: selectedMosque!.id,
          },
        },
      );

      _emitSuccessfulState();

      _announcementRepo.subscribe(
        onCreated: (announcement) => _emitSuccessfulState(),
        onUpdated: (announcement) => _emitSuccessfulState(),
        onDeleted: (announcement) => _emitSuccessfulState(),
      );
    }
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
