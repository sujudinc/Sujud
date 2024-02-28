// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class JamaahAnnouncementRepo extends JamaahAnnouncementRepoAbstract {
  JamaahAnnouncementRepo()
      : _announcementApi = GetIt.instance.get<AnnouncementApiAbstract>(),
        _localDatabaseUtility = GetIt.instance
            .get<LocalDatabaseUtilityAbstract>(param1: 'jamaah-announcements') {
    _preloadDataFromLocalCache();
  }

  final AnnouncementApiAbstract _announcementApi;
  final LocalDatabaseUtilityAbstract _localDatabaseUtility;

  final _cache = <String, Announcement>{};
  bool _hasMoreItems = false;

  StreamSubscription<SubscriptionResponse<Announcement>>? _stream;
  Map<String, dynamic>? _variables;
  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  Future<void> _preloadDataFromLocalCache() async {
    final localData = await _localDatabaseUtility.getMany();

    if (localData.isNotEmpty) {
      for (final data in localData) {
        if (data.containsKey('filter') |
            data.containsKey('limit') |
            data.containsKey('nextToken')) {
          _filter = data['filter'];
          _limit = data['limit'];
          _nextToken = data['nextToken'];
        } else if (data.isEmpty) {
        } else {
          final item = Announcement.fromJson(data).copyWith(
            mosque: Mosque.fromJson(data['mosque']).copyWith(
              address: Address.fromJson(data['mosque']['address']),
              contactInfo: ContactInfo.fromJson(data['mosque']['contactInfo']),
              creator: User.fromJson(data['mosque']['creator']),
            ),
            creator: User.fromJson(data['creator']),
          );

          _cache[item.id] = item;
        }
      }
    }
  }

  @override
  List<Announcement> get items {
    final items = _cache.values.toList()
      ..sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

    return items;
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> get({
    required String id,
  }) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (announcement, errors) = await _announcementApi.get(
      id: id,
      variables: _variables,
    );

    if (announcement != null) {
      _cache[id] = announcement;
      _localDatabaseUtility.save(id, announcement.toJson());
    }

    return (announcement, errors);
  }

  @override
  Future<(List<Announcement>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _variables = variables;
    _filter = filter;
    _limit = limit;

    final (response, errors) = await _announcementApi.listByMosqueId(
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
  Future<(List<Announcement>, List<GraphQLResponseError>)> listMore() async {
    if (!_hasMoreItems) {
      return (<Announcement>[], <GraphQLResponseError>[]);
    }

    final (response, errors) = await _announcementApi.listByMosqueId(
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
  void subscribe({
    Function((Announcement?, List<GraphQLResponseError>) response)? onCreated,
    Function((Announcement?, List<GraphQLResponseError>) response)? onUpdated,
    Function((Announcement?, List<GraphQLResponseError>) response)? onDeleted,
  }) {
    _stream = _announcementApi
        .subscribe(variables: _variables, filter: _filter)
        .listen((event) {
      switch (event.type) {
        case SubscriptionType.onCreate:
          final announcement = event.response.data;
          final id = announcement?.id;

          if (announcement != null) {
            _cache[id!] = announcement;
            _localDatabaseUtility.save(id, announcement.toJson());
          }

          onCreated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onUpdate:
          final announcement = event.response.data;
          final id = announcement?.id;

          if (announcement != null) {
            _cache[id!] = announcement;
            _localDatabaseUtility.save(id, announcement.toJson());
          }

          onUpdated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onDelete:
          final announcement = event.response.data;
          final id = announcement?.id;

          if (announcement != null) {
            _cache.remove(id!);
            _localDatabaseUtility.delete(id);
          }

          onDeleted?.call((event.response.data, event.response.errors));
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
