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
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>();

  final AmplifyModelApiAbstract<Announcement> _announcementApi;
  final AmplifyStorageServiceAbstract _storageService;

  final _cache = <String, Announcement>{};
  bool _hasMoreItems = false;

  StreamSubscription<GraphqlSubscriptionResponse<Announcement>>? _stream;
  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  @override
  List<Announcement> get items {
    final items = _cache.values.toList()
      ..sort((a, b) => b.createdAt!.compareTo(a.createdAt!));

    return items;
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> get(String id) async {
    if (_cache.containsKey(id)) {
      return (_cache[id], <GraphQLResponseError>[]);
    }

    final (announcement, errors) = await _announcementApi.get(id);

    if (announcement != null) {
      _cache[id] = announcement;
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
    _nextToken = nextToken;

    final (response, errors) = await _announcementApi.list(
      filter: _filter,
      limit: _limit,
      nextToken: _nextToken,
    );

    _nextToken = response.nextToken;

    if (response.items != null) {
      for (var item in response.items!) {
        final keys = item?.images;

        if (keys != null && keys.isNotEmpty) {
          final images = await Future.wait(
            keys.map(
              (key) => _storageService.getUri(key: key).then(
                    (uri) => uri.toString(),
                  ),
            ),
          );

          item = item!.copyWithModelFieldValues(
            images: ModelFieldValue.value(images),
          );
        }

        _cache[item!.id] = item;
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

    if (response.items != null) {
      for (var item in response.items!) {
        final keys = item?.images;

        if (keys != null && keys.isNotEmpty) {
          final images = await Future.wait(
            keys.map(
              (key) => _storageService.getUri(key: key).then(
                    (uri) => uri.toString(),
                  ),
            ),
          );

          item = item!.copyWithModelFieldValues(
            images: ModelFieldValue.value(images),
          );
        }

        _cache[item!.id] = item;
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

    final id = announcement?.id;

    if (announcement != null) {
      _cache[id!] = announcement;
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

    final id = announcement?.id;

    if (announcement != null) {
      _cache[id!] = announcement;
    }

    return (announcement, errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> delete(
    Announcement item,
  ) async {
    final (announcement, errors) = await _announcementApi.delete(item.id);
    final id = announcement?.id;

    if (announcement != null && _cache.containsKey(id)) {
      _cache.remove(id!);

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
          }

          onCreated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onUpdate:
          final announcement = event.response.data;
          final id = announcement?.id;

          if (announcement != null) {
            _cache[id!] = announcement;
          }

          onUpdated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onDelete:
          final announcement = event.response.data;
          final id = announcement?.id;

          if (announcement != null) {
            _cache.remove(id!);
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
