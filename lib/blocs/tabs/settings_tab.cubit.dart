// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

part 'settings_tab.cubit.freezed.dart';
part 'settings_tab.state.dart';

class SettingsTabCubit extends Cubit<SettingsTabState> {
  SettingsTabCubit()
      : _userRepo = GetIt.instance.get<UserRepoAbstract>(),
        super(const SettingsTabState.ready());

  final UserRepoAbstract _userRepo;

  Future<void> logout() async {
    if (state is SettingsTabStateLoading) {
      return;
    }

    emit(const SettingsTabState.loadingLogout());

    await _userRepo.logout();

    emit(const SettingsTabState.ready());
  }
}
