// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';
import 'package:path/path.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class AnnouncementRepo extends AnnouncementRepoAbstract {
  AnnouncementRepo()
      : _announcementApi =
            GetIt.instance.get<AmplifyModelApiAbstract<Announcement>>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>(),
        _localDatabaseUtility = GetIt.instance
            .get<LocalDatabaseUtilityAbstract>(param1: 'announcements'),
        _loggerUtility = GetIt.instance.get<LoggerUtilityAbstract>() {
    _preloadDataFromLocalCache();
  }

  final AmplifyModelApiAbstract<Announcement> _announcementApi;
  final AmplifyStorageServiceAbstract _storageService;
  final LocalDatabaseUtilityAbstract _localDatabaseUtility;
  final LoggerUtilityAbstract _loggerUtility;

  final _cache = <String, Announcement>{};
  bool _hasMoreItems = false;
  StreamSubscription<GraphqlSubscriptionResponse<Announcement>>? _stream;
  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  Future<void> _preloadDataFromLocalCache() async {
    _loggerUtility.log('Loading announcements from local cache.');

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
  Map<String, Map<String, Uri>> get cachedImages => {};

  @override
  void setCachedImage({
    required String id,
    required String key,
    required Uri url,
  }) {
    if (cachedImages.containsKey(id)) {
      cachedImages[id]![key] = url;
    } else {
      cachedImages[id] = <String, Uri>{key: url};
    }

    _localDatabaseUtility.save('cachedImages', cachedImages);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> get(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (announcement, errors) = await _announcementApi.get(id);

    if (announcement != null) {
      _cache[id] = announcement;
      _localDatabaseUtility.save(id, announcement.toJson());
    }

    return (announcement, errors);
  }

  @override
  Future<(List<Announcement>?, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    _filter = filter;
    _limit = limit;

    final (response, errors) = await _announcementApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
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
  Future<(List<Announcement>?, List<GraphQLResponseError>)> listMore() async {
    if (!_hasMoreItems) {
      return (null, <GraphQLResponseError>[]);
    }

    final (response, errors) = await _announcementApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    await _localDatabaseUtility.save(
      'listParams',
      <String, dynamic>{
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
  Future<(Announcement?, List<GraphQLResponseError>)> create(
    Announcement item, {
    List<AttributedFile>? images,
  }) async {
    if (images != null) {
      final keys = await Future.wait(
        images.mapIndexed(
          (index, image) => _storageService.upload(
            path: 'mosques/${item.mosque.id}/announcements/${item.id}',
            filename: 'announcement-$index.jpg',
            file: image,
          ),
        ),
      );

      item = item.copyWith(images: keys);
    }

    final (announcement, errors) = await _announcementApi.create(
      item,
    );

    if (announcement == null && errors.isNotEmpty) {
      await Future.wait(
        item.images!.map(
          (key) => _storageService.delete(
            key: key,
          ),
        ),
      );
    }

    return (announcement, errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> update(
    Announcement item, {
    List<AttributedFile>? images,
  }) async {
    if (images != null) {
      if (item.images != null && item.images!.isNotEmpty) {
        await Future.wait(
          item.images!.map(
            (key) => _storageService.delete(
              key: key,
            ),
          ),
        );
      }

      final keys = await Future.wait(
        images.mapIndexed(
          (index, image) => _storageService.upload(
            path: 'announcements/${item.mosque.id}/announcements/${item.id}/',
            filename: 'announcement-$index.${extension(image.localPath)}',
            file: image,
          ),
        ),
      );

      item = item.copyWith(images: keys);
    }

    final (announcement, errors) = await _announcementApi.update(item);

    return (announcement, errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> delete(
    Announcement item,
  ) async {
    final (announcement, errors) = await _announcementApi.delete(item.id);

    if (announcement != null) {
      if (item.images != null && item.images!.isNotEmpty) {
        await Future.wait(
          item.images!.map(
            (key) => _storageService.delete(
              key: key,
            ),
          ),
        );
      }
    }

    return (announcement, errors);
  }

  @override
  void subscribe({
    Function((Announcement?, List<GraphQLResponseError>) response)? onCreated,
    Function((Announcement?, List<GraphQLResponseError>) response)? onUpdated,
    Function((Announcement?, List<GraphQLResponseError>) response)? onDeleted,
  }) {
    _stream = _announcementApi
        .subscribe(modelType: Announcement.classType, filter: _filter)
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
