// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

part 'get_urls.cubit.freezed.dart';
part 'get_urls.state.dart';

class GetUrlsCubit extends HydratedCubit<GetUrlsState> {
  GetUrlsCubit({required String id, required List<String> keys})
      : _id = id,
        _keys = keys,
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        super(const GetUrlsState.initial()) {
    init();
  }

  final String _id;
  final List<String> _keys;
  final AmplifyStorageServiceAbstract _storageService;
  final _urls = <String, List<String>>{};

  Future<void> init() async {
    emit(const GetUrlsState.loading());

    if (_urls[_id] != null) {
      emit(GetUrlsState.ready(_urls[_id]!));

      return;
    }

    try {
      final urls = await Future.wait(
        _keys.map((key) => _storageService.getUri(key: key)),
      );

      _urls[_id] = urls.map((url) => url.toString()).toList();

      emit(GetUrlsState.ready(_urls[_id]!));
    } catch (e) {
      emit(const GetUrlsState.failure(GetUrlException.failedToDownloadFile));
    }
  }

  @override
  GetUrlsState? fromJson(Map<String, dynamic> json) {
    (json['urls'] as Map<String, dynamic>).forEach((key, value) {
      _urls[key] = value as List<String>;
    });

    return GetUrlsState.ready(_urls[_id]!);
  }

  @override
  Map<String, dynamic>? toJson(GetUrlsState state) {
    final values = <String, dynamic>{
      'urls': _urls,
    };

    return values;
  }
}
