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
      : _mosqueApi = GetIt.instance.get<MosqueApiAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        _localDatabaseUtility =
            GetIt.instance.get<LocalDatabaseUtilityAbstract>(param1: 'mosques'),
        _loggerUtility = GetIt.instance.get<LoggerUtilityAbstract>() {
    _preloadDataFromLocalCache();
  }

  final MosqueApiAbstract _mosqueApi;
  final AmplifyStorageServiceAbstract _storageService;
  final LocalDatabaseUtilityAbstract _localDatabaseUtility;
  final LoggerUtilityAbstract _loggerUtility;

  final _selectedMosque = BehaviorSubject<Mosque?>();
  final _cache = <String, Mosque>{};
  bool _hasMoreItems = false;

  StreamSubscription<SubscriptionResponse<Mosque>>? _stream;
  Map<String, dynamic>? _variables;
  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  Future<void> _preloadDataFromLocalCache() async {
    final localSelectedMosque = await _localDatabaseUtility.getOne(
      'selectedMosque',
    );

    if (localSelectedMosque != null) {
      final mosque = Mosque.fromJson(localSelectedMosque).copyWith(
        address: Address.fromJson(localSelectedMosque['address']),
        contactInfo: ContactInfo.fromJson(localSelectedMosque['contactInfo']),
        creator: User.fromJson( localSelectedMosque['creator']),
      );

      _selectedMosque.add(mosque);
    }

    final localData = await _localDatabaseUtility.getMany();

    if (localData.isNotEmpty) {
      for (final data in localData) {
        if (data.containsKey('filter') |
            data.containsKey('limit') |
            data.containsKey('nextToken')) {
          _filter = data['filter'];
          _limit = data['limit'];
          _nextToken = data['nextToken'];
        } else {
          final item = Mosque.fromJson(data).copyWith(
            address: Address.fromJson(data['address']),
            contactInfo: ContactInfo.fromJson(data['contactInfo']),
            creator: User.fromJson(data['creator']),
          );

          _cache[item.id] = item;
        }
      }
    }
  }

  @override
  Mosque? get selectedMosque => _selectedMosque.valueOrNull;

  @override
  set selectedMosque(Mosque? value) {
    _selectedMosque.add(value);

    if (value != null) {
      _localDatabaseUtility.save('selectedMosque', value.toJson());
    }
  }

  @override
  List<Mosque> get items {
    final list = _cache.values.toList()
      ..sort((a, b) => a.name.compareTo(b.name));

    return list;
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> get({
    required String id,
  }) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (mosque, errors) = await _mosqueApi.get(
      id: id,
      variables: _variables,
    );

    if (mosque != null) {
      _cache[id] = mosque;
      _loggerUtility
        ..log('mosque json')
        ..log(mosque.toJson());
      _localDatabaseUtility.save(id, mosque.toJson());
    }

    return (mosque, errors);
  }

  @override
  Future<(List<Mosque>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _variables = variables;
    _filter = filter;
    _limit = limit;
    _nextToken = nextToken;

    final (response, errors) = await _mosqueApi.list(
      authorizationMode: APIAuthorizationType.apiKey,
      variables: _variables,
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
        'variables': _variables,
        'filter': _filter,
        'limit': _limit,
        'nextToken': _nextToken,
      },
    );

    if (response.items != null) {
      for (final item in response.items!) {
        await _localDatabaseUtility.save(item!.id, item.toJson());
        _cache[item.id] = item;
      }
    }

    return (items, errors);
  }

  @override
  Future<(List<Mosque>, List<GraphQLResponseError>)> listMore() async {
    if (!_hasMoreItems) {
      return (<Mosque>[], <GraphQLResponseError>[]);
    }

    final (response, errors) = await _mosqueApi.list(
      variables: _variables,
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
        'variables': _variables,
        'filter': _filter,
        'limit': _limit,
        'nextToken': _nextToken,
      },
    );

    if (response.items != null) {
      for (final item in response.items!) {
        await _localDatabaseUtility.save(item!.id, item.toJson());
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

      item = item.copyWith(images: keys);
    }

    final (mosque, errors) = await _mosqueApi.create(
      item: item,
      variables: _variables,
    );

    if (errors.isNotEmpty) {
      await Future.wait(
        item.images.map(
          (key) => _storageService.delete(
            key: key,
          ),
        ),
      );
    }

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

      item = item.copyWith(images: keys);
    }

    final (mosque, errors) = await _mosqueApi.update(
      item: item,
      variables: _variables,
    );
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache[id!] = mosque;
    }

    return (mosque, errors);
  }

  @override
  Future<(Mosque?, List<GraphQLResponseError>)> delete({
    required Mosque item,
  }) async {
    final (mosque, errors) = await _mosqueApi.delete(
      id: item.id,
      variables: _variables,
    );
    final id = mosque?.id;

    if (mosque != null && _cache.containsKey(id)) {
      _cache.remove(id!);
    }

    return (mosque, errors);
  }

  @override
  void subscribe({
    Function((Mosque?, List<GraphQLResponseError>) response)? onCreated,
    Function((Mosque?, List<GraphQLResponseError>) response)? onUpdated,
    Function((Mosque?, List<GraphQLResponseError>) response)? onDeleted,
  }) {
    _stream = _mosqueApi.subscribe(variables: _variables).listen((event) {
      switch (event.type) {
        case SubscriptionType.onCreate:
          final mosque = event.response.data;
          final id = mosque?.id;

          if (mosque != null) {
            _cache[id!] = mosque;
            _localDatabaseUtility.save(id, mosque.toJson());
          }

          onCreated?.call((mosque, event.response.errors));
          break;
        case SubscriptionType.onUpdate:
          final mosque = event.response.data;
          final id = mosque?.id;

          if (mosque != null) {
            _cache[id!] = mosque;
            _localDatabaseUtility.save(id, mosque.toJson());
          }

          onUpdated?.call((mosque, event.response.errors));
          break;
        case SubscriptionType.onDelete:
          final mosque = event.response.data;
          final id = mosque?.id;

          if (mosque != null) {
            _cache.remove(id!);
            _localDatabaseUtility.delete(id);
          }

          onDeleted?.call((mosque, event.response.errors));
          break;
      }
    });
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _nextToken = null;
  }

  @override
  void dispose() {
    if (_stream != null) {
      _stream!.cancel();
    }
  }
}
