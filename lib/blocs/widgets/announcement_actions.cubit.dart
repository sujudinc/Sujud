import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'announcement_actions.cubit.freezed.dart';
part 'announcement_actions.state.dart';

class AnnouncementActionsCubit extends Cubit<AnnouncementActionsState> {
  AnnouncementActionsCubit({required Announcement announcement})
      : _announcement = announcement,
        _announcementRepo = GetIt.instance.get<AnnouncementRepoAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _networkUtility = GetIt.instance.get<NetworkUtilityAbstract>(),
        super(
          const AnnouncementActionsState.ready(
            isLiked: false,
            isBookmarked: false,
          ),
        );

  final Announcement _announcement;
  final AnnouncementRepoAbstract _announcementRepo;
  final MosqueRepoAbstract _mosqueRepo;
  final NetworkUtilityAbstract _networkUtility;

  Future<void> init() async {
    _networkUtility.onConnectivityChanged(
      onDisconnected: () {},
      onConnected: () {},
    );

    emit(const AnnouncementActionsState.ready(
      isLiked: false,
      isBookmarked: false,
    ));
  }

  Future<void> toggleLike() async {}

  Future<void> share() async {}

  Future<void> toggleBookmark() async {}
}
