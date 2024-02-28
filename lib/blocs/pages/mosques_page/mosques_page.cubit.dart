// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'mosques_page.cubit.freezed.dart';
part 'mosques_page.state.dart';

class MosquesPageCubit extends Cubit<MosquesPageState> {
  MosquesPageCubit()
      : _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        _networkUtility = GetIt.instance.get<NetworkUtilityAbstract>(),
        super(const MosquesPageState.loading()) {
    init();
  }

  final MosqueRepoAbstract _mosqueRepo;
  final NetworkUtilityAbstract _networkUtility;

  String selectedCity = 'Birmingham, UK';

  set setSelectedCity(String city) {
    emit(const MosquesPageState.loading());

    selectedCity = city;

    _emitSuccessfulState();
  }

  Future<void> init() async {
    emit(const MosquesPageState.loading());

    _networkUtility.onConnectivityChanged(
      onConnected: () async {
        emit(const MosquesPageState.loading());
        await _mosqueRepo.list();
        _emitSuccessfulState();
      },
    );

    _emitSuccessfulState();
  }

  void _emitSuccessfulState() {
    emit(
      _mosqueRepo.items.isNotEmpty
          ? MosquesPageState.ready(
              mosques: _mosqueRepo.items,
            )
          : const MosquesPageState.empty(),
    );
  }
}
