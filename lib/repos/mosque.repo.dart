// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MosqueRepo extends MosqueRepoAbstract {
  MosqueRepo()
      : _mosqueApi = GetIt.instance.get<AmplifyModelApiAbstract<Mosque>>();

  final AmplifyModelApiAbstract<Mosque> _mosqueApi;

  final _selectedMosque = BehaviorSubject<Mosque?>();
  final _cache = <String, Mosque>{};
  bool _hasMoreItems = false;

  GraphQLRequest<PaginatedResult<Mosque>>? _nextRequest;

  @override
  Mosque? get selectedMosque => _selectedMosque.valueOrNull;

  @override
  set selectedMosque(Mosque? value) {
    _selectedMosque.add(value);
  }

  @override
  List<Mosque> get items => _cache.values.toList();

  @override
  Future<(Mosque?, Error?)> create(Mosque item) async {
    final (mosque, error) = await _mosqueApi.create(item);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache[id!] = mosque;
    }

    return (mosque, error);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>?)> read(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], null);
    }

    final (mosque, error) = await _mosqueApi.read(id);

    if (mosque != null) {
      _cache[id] = mosque;
    }

    return (mosque, error);
  }

  @override
  Future<(Mosque?, Error?)> update(Mosque item) async {
    final (mosque, error) = await _mosqueApi.update(item);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache[id!] = mosque;
    }

    return (mosque, error);
  }

  @override
  Future<(Mosque?, Error?)> delete(Mosque item) async {
    final (mosque, error) = await _mosqueApi.delete(item);
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache.remove(id!);
    }

    return (mosque, error);
  }

  @override
  Future<void> list({
    QueryPredicate<Model>? where,
    int? limit,
    String? nextToken,
  }) async {
    final response = await _mosqueApi.list(
      where: where,
      limit: limit,
      nextToken: nextToken,
    );

    if (response == null) {
      return;
    }

    _hasMoreItems = response.hasNextResult;
    _nextRequest = response.requestForNextResult;

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

    final response = await _mosqueApi.listMore(
      nextRequest: _nextRequest!,
    );

    if (response == null) {
      return;
    }

    _hasMoreItems = response.hasNextResult;
    _nextRequest = response.requestForNextResult;

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
    _nextRequest = null;
  }
}
