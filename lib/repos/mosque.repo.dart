// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MosqueRepo extends MosqueRepoAbstract {
  MosqueRepo() : _mosqueApi = GetIt.instance.get<AmplifyApiAbstract<Mosque>>();

  final AmplifyApiAbstract<Mosque> _mosqueApi;

  final _selectedMosque = BehaviorSubject<Mosque?>();
  final _cache = <String, Mosque>{};
  bool _hasMoreItems = false;

  QueryPredicate<Model>? _where;
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
  Future<Mosque?> create(Mosque item) async {
    final response = await _mosqueApi.create(item);
    final id = response?.id;

    if (response != null && _cache.containsKey(id)) {
      _cache[id!] = response;
    }

    return response;
  }

  @override
  Future<Mosque?> read(String id) async {
    if (_cache.containsKey(id)) {
      return _cache[id];
    }

    final response = await _mosqueApi.read(id);

    if (response != null) {
      _cache[response.id] = response;
    }

    return response;
  }

  @override
  Future<Mosque?> update(Mosque item) async {
    final response = await _mosqueApi.update(item);
    final id = response?.id;

    if (response != null && _cache.containsKey(id)) {
      _cache[id!] = response;
    }

    return response;
  }

  @override
  Future<Mosque?> delete(Mosque item) async {
    final response = await _mosqueApi.delete(item);
    final id = response?.id;

    if (response != null && _cache.containsKey(id)) {
      _cache.remove(id!);
    }

    return response;
  }

  @override
  Future<void> list({
    QueryPredicate<Model>? where,
    int? limit,
    String? nextToken,
  }) async {
    _where = where;

    final response = await _mosqueApi.list(
      where: _where,
      limit: limit,
      nextToken: nextToken,
    );

    if (response == null) {
      return;
    }

    _hasMoreItems = response.nextToken != null;
    _nextToken = response.nextToken;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }
  }

  @override
  Future<void> listMore() async {
    if (!_hasMoreItems) {
      return;
    }

    final response = await _mosqueApi.list(
      where: _where,
      limit: _limit,
      nextToken: _nextToken,
    );

    if (response == null) {
      return;
    }

    _hasMoreItems = response.nextToken != null;
    _nextToken = response.nextToken;

    for (final user in response.items) {
      if (user != null) {
        _cache[user.id] = user;
      }
    }
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _where = null;
    _limit = null;
    _nextToken = null;
  }
}
