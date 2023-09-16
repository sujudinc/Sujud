// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

part 'mosque_selection_page.cubit.freezed.dart';
part 'mosque_selection_page.state.dart';

class MosqueSelectionCubit extends Cubit<MosqueSelectionState> {
  MosqueSelectionCubit()
      : _mosqueRepo = GetIt.instance.get<MosqueRepoAbstract>(),
        super(const MosqueSelectionState.loading());

  final MosqueRepoAbstract _mosqueRepo;

  String selectedCity = 'Birmingham, UK';

  List<Mosque> get mosques => _mosqueRepo.items;

  set setSelectedCity(String city) {
    emit(const MosqueSelectionState.loading());

    selectedCity = city;

    emit(const MosqueSelectionState.ready());
  }

  Future<void> hydrate() async {
    emit(const MosqueSelectionState.loading());

    _mosqueRepo.list();

    emit(const MosqueSelectionState.ready());
  }
}
