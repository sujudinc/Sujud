import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'dashboard_tab.cubit.freezed.dart';
part 'dashboard_tab.state.dart';

class DashboardTabCubit extends Cubit<DashboardTabState> {
  DashboardTabCubit()
      : _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        _navigationUtility = GetIt.instance.get<NavigationUtilityAbstract>(),
        super(const DashboardTabState.loading()) {
    hydrate();
  }

  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _userRepo;
  final NavigationUtilityAbstract _navigationUtility;

  void get goToCreateMosquePage => _navigationUtility.goRoute(
        route: _navigationUtility
            .navigationRoutes.home.admin.dashboard.createMosque,
      );

  Future<void> hydrate() async {
    emit(const DashboardTabState.loading());

    final currentUser = _userRepo.currentUser;

    if (currentUser != null) {
      String? mosqueId;

      if (currentUser.type == UserType.ADMIN) {
        final createdMosques = currentUser.createdMosques;

        if (createdMosques != null) {
          if (createdMosques.isNotEmpty) {
            mosqueId = createdMosques.first.id;
          }
        }
      }

      if (mosqueId != null) {
        final (mosque, _) = await _mosqueRepo.get(mosqueId);

        if (mosque != null) {
          _mosqueRepo.selectedMosque = mosque;

          // emit(
          //   DashboardTabState.ready(
          //     selectedMosque: mosque,
          //   ),
          // );
          emit(const DashboardTabState.empty());
        } else {
          emit(const DashboardTabState.empty());
        }
      } else {
        emit(const DashboardTabState.empty());
      }
    }
  }

  @override
  Future<void> close() {
    _mosqueRepo.dispose();
    _userRepo.dispose();

    return super.close();
  }
}
