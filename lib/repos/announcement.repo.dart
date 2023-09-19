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

  Map<String, dynamic>? _filter;
  int? _limit;
  String? _nextToken;

  @override
  List<Announcement> get items => _cache.values.toList();

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
      for (final item in response.items!) {
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

    if (response.items != null) {
      for (final item in response.items!) {
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
            path: 'announcements/${item.mosque.id}/announcements/${item.id}/',
            filename: 'announcement-$index.${extension(image.localPath)}',
            file: image,
          ),
        ),
      );

      item.copyWith(images: keys);
    }

    final (announcement, errors) = await _announcementApi.create(item);
    final id = announcement?.id;

    if (announcement != null && _cache.containsKey(id)) {
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

      item.copyWith(images: keys);
    }

    final (announcement, errors) = await _announcementApi.update(item);
    final id = announcement?.id;

    if (announcement != null && _cache.containsKey(id)) {
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
    }

    return (announcement, errors);
  }

  @override
  void clearCache() {
    _cache.clear();
    _hasMoreItems = false;
    _nextToken = null;
  }
}
