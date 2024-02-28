// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'dashboard_tab.cubit.freezed.dart';
part 'dashboard_tab.state.dart';

class DashboardTabCubit extends Cubit<DashboardTabState> {
  DashboardTabCubit()
      : _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const DashboardTabState.loading()) {
    init();
  }

  final MosqueRepoAbstract _mosqueRepo;
  final UserRepoAbstract _userRepo;

  Future<void> init() async {
    emit(const DashboardTabState.loading());

    if (_mosqueRepo.selectedMosque == null) {
      final currentUser = _userRepo.currentUser;

      if (currentUser != null) {
        if (currentUser.type == UserType.ADMIN) {
          final (mosques, errors) = await _mosqueRepo.list(
            filter: <String, dynamic>{
              'creatorId': {
                'eq': currentUser.id,
              }
            },
          );

          print(errors);

          if (mosques.isNotEmpty) {
            _mosqueRepo.selectedMosque = mosques.first;

            emit(
              DashboardTabState.ready(
                selectedMosque: _mosqueRepo.selectedMosque!,
              ),
            );
          } else {
            emit(const DashboardTabState.empty());
          }
        }
      }
    } else {
      emit(
        DashboardTabState.ready(
          selectedMosque: _mosqueRepo.selectedMosque!,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    _mosqueRepo.dispose();
    _userRepo.dispose();

    return super.close();
  }
}
