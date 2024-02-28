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

class AdminAnnouncementRepo extends AdminAnnouncementRepoAbstract {
  AdminAnnouncementRepo()
      : _announcementApi = GetIt.instance.get<AnnouncementApiAbstract>(),
        _storageService = GetIt.instance.get<AmplifyStorageServiceAbstract>();

  final AnnouncementApiAbstract _announcementApi;
  final AmplifyStorageServiceAbstract _storageService;

  final _cache = <String, Announcement>{};
  bool _hasMoreItems = false;

  StreamSubscription<SubscriptionResponse<Announcement>>? _stream;
  Map<String, dynamic>? _variables;
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

    if (response.items != null) {
      for (final item in response.items!) {
        if (item!.images != null && item.images!.isNotEmpty) {
          final urls = await Future.wait(
            item.images!.map(
              (key) => _storageService.getUri(key: key),
            ),
          );

          item.copyWith(images: urls.map((url) => url.toString()).toList());
        }

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

    if (response.items != null) {
      for (final item in response.items!) {
        if (item!.images != null && item.images!.isNotEmpty) {
          final urls = await Future.wait(
            item.images!.map(
              (key) => _storageService.getUri(key: key),
            ),
          );

          item.copyWith(images: urls.map((url) => url.toString()).toList());
        }

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
      item: item,
      variables: _variables,
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

    final (announcement, errors) = await _announcementApi.update(
      item: item,
      variables: _variables,
    );

    return (announcement, errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> delete({
    required Announcement item,
  }) async {
    final (announcement, errors) = await _announcementApi.delete(
      id: item.id,
      variables: _variables,
    );
    final id = announcement?.id;

    if (announcement != null) {
      if (_cache.containsKey(id)) {
        _cache.remove(id!);
      }

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
        .subscribe(variables: _variables, filter: _filter)
        .listen((event) async {
      switch (event.type) {
        case SubscriptionType.onCreate:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
            if (item.images != null && item.images!.isNotEmpty) {
              final urls = await Future.wait(
                item.images!.map(
                  (key) => _storageService.getUri(key: key),
                ),
              );

              item.copyWith(images: urls.map((url) => url.toString()).toList());
            }

            _cache[id!] = item;
          }

          onCreated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onUpdate:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
            if (item.images != null && item.images!.isNotEmpty) {
              final urls = await Future.wait(
                item.images!.map(
                  (key) => _storageService.getUri(key: key),
                ),
              );

              item.copyWith(images: urls.map((url) => url.toString()).toList());
            }

            _cache[id!] = item;
          }

          onUpdated?.call((event.response.data, event.response.errors));
          break;
        case SubscriptionType.onDelete:
          final item = event.response.data;
          final id = item?.id;

          if (item != null) {
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
