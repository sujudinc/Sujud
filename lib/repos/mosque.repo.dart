// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
import 'package:rxdart/rxdart.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MosqueRepo extends MosqueRepoAbstract {
  MosqueRepo()
      : _mosqueApi = GetIt.instance.get<AmplifyModelApiAbstract<Mosque>>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>();

  final AmplifyModelApiAbstract<Mosque> _mosqueApi;
  final AmplifyStorageServiceAbstract _storageService;

  final _selectedMosque = BehaviorSubject<Mosque?>();
  final _cache = <String, Mosque>{};
  bool _hasMoreItems = false;

  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  @override
  Mosque? get selectedMosque => _selectedMosque.valueOrNull;

  @override
  set selectedMosque(Mosque? value) {
    _selectedMosque.add(value);
  }

  @override
  List<Mosque> get items => _cache.values.toList();

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> get(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (mosque, errors) = await _mosqueApi.get(id);

    if (mosque != null) {
      _cache[id] = mosque;
    }

    return (mosque, errors);
  }

  @override
  Future<(List<Mosque>?, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _filter = filter;
    _limit = limit;
    _nextToken = nextToken;

    final (response, errors) = await _mosqueApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    if (response.items != null) {
      for (final item in response.items!) {
        _cache[item.id] = item;
      }
    }

    return (items, errors);
  }

  @override
  Future<(List<Mosque>?, List<GraphQLResponseError>)> listMore() async {
    if (!_hasMoreItems) {
      return (null, <GraphQLResponseError>[]);
    }

    final (response, errors) = await _mosqueApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    if (response.items != null) {
      for (final item in response.items!) {
        _cache[item.id] = item;
      }
    }

    return (items, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> create(
    Mosque item, {
    List<AttributedFile>? images,
  }) async {
    if (images != null) {
      final keys = await Future.wait(
        images.mapIndexed(
          (index, image) => _storageService.upload(
            path: 'mosques/${item.id}/profile/',
            filename: 'mosque-profile-$index.${extension(image.localPath)}',
            file: image,
          ),
        ),
      );

      item.copyWith(images: keys);
    }

    final (mosque, errors) = await _mosqueApi.create(item);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache[id!] = mosque;
    }

    return (mosque, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> update(
    Mosque item, {
    List<AttributedFile>? images,
  }) async {
    if (images != null) {
      if (item.images.isNotEmpty) {
        await Future.wait(
          item.images.map(
            (key) => _storageService.delete(
              key: key,
            ),
          ),
        );
      }

      final keys = await Future.wait(
        images.mapIndexed(
          (index, image) => _storageService.upload(
            path: 'mosques/${item.id}/profile/',
            filename: 'mosque-profile-$index.${extension(image.localPath)}',
            file: image,
          ),
        ),
      );

      item.copyWith(images: keys);
    }

    final (mosque, errors) = await _mosqueApi.update(item);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache[id!] = mosque;
    }

    return (mosque, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> delete(Mosque item) async {
    final (mosque, errors) = await _mosqueApi.delete(item.id);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache.remove(id!);
    }

    return (mosque, errors);
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _nextToken = null;
  }
}
