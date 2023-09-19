// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';

part 'home_page.cubit.freezed.dart';
part 'home_page.state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit()
      : _navigation = GetIt.instance.get<NavigationUtilityAbstract>(),
        _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const HomePageState.initial());

  final NavigationUtilityAbstract _navigation;
  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _userRepo;

  Mosque? get selectedMosque => _mosqueRepo.selectedMosque;
  NavigationRoutes get _routes => _navigation.navigationRoutes;

  void get goToCreateAnnouncementPage {
    _navigation.push(
      path: NavigationPath(
        route: _routes.home.admin.dashboard.createAnnouncement,
        subRoute: 'dashboard',
      ),
    );
  }

  Future<void> hydrate() async {
    emit(const HomePageState.loading());
    final currentUser = _userRepo.currentUser;

    if (currentUser != null) {
      if (currentUser.type == UserType.ADMIN) {
        final createdMosques = currentUser.createdMosques;

        if (createdMosques != null) {
          if (createdMosques.isNotEmpty) {
            _mosqueRepo.selectedMosque = createdMosques.first;
          }
        }
      } else {
        final mosques = currentUser.mosques;

        if (mosques != null) {
          if (mosques.isNotEmpty) {
            _mosqueRepo.selectedMosque = mosques.first.mosque;
          }
        }
      }
    }

    emit(const HomePageState.ready());
  }
}
