// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class AnnouncementApi implements AnnouncementApiAbstract {
  AnnouncementApi()
      : _amplifyApiService =
            GetIt.instance.get<AmplifyApiServiceAbstract<Announcement>>(),
        _operations = AnnouncementOperations();

  final AmplifyApiServiceAbstract<Announcement> _amplifyApiService;
  final AnnouncementOperations _operations;

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> get({
    required String id,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.get(
      modelType: _operations.modelType,
      operation: _operations.get,
      id: id,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(GraphQLListResponse<Announcement>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final (data, errors) = await _amplifyApiService.list(
      modelType: _operations.modelType,
      operation: _operations.list,
      variables: variables,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (data, errors);
  }

  @override
  Future<(GraphQLListResponse<Announcement>?, List<GraphQLResponseError>)>
      listByMosqueId({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  }) async {
    final (data, errors) = await _amplifyApiService.list(
      modelType: _operations.modelType,
      operation: _operations.listByMosqueId,
      variables: variables,
      filter: filter,
      limit: limit,
      nextToken: nextToken,
    );

    return (data, errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> create({
    required Announcement item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.create(
      modelType: _operations.modelType,
      operation: _operations.create,
      input: <String, dynamic>{
        'id': item.id,
        'title': item.title,
        'body': item.body,
        'images': item.images,
        'creatorId': item.creator.id,
        'mosqueId': item.mosque.id,
      },
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> update({
    required Announcement item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.update(
      modelType: _operations.modelType,
      operation: _operations.update,
      input: <String, dynamic>{
        'id': item.id,
        'title': item.title,
        'body': item.body,
        'images': item.images,
      },
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Future<(Announcement?, List<GraphQLResponseError>)> delete({
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  }) async {
    final response = await _amplifyApiService.delete(
      modelType: _operations.modelType,
      operation: _operations.delete,
      id: id,
      condition: condition,
      variables: variables,
    );

    return (response.data, response.errors);
  }

  @override
  Stream<GraphqlSubscriptionResponse<Announcement>> subscribe({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  }) {
    final streams =
        StreamGroup.merge<GraphqlSubscriptionResponse<Announcement>>([
      _amplifyApiService
          .subscribe(
            modelType: _operations.modelType,
            operation: _operations.onCreate,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Announcement>(
                type: SubscriptionType.onCreate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operations.modelType,
            operation: _operations.onUpdate,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Announcement>(
                type: SubscriptionType.onUpdate,
                response: response,
              )),
      _amplifyApiService
          .subscribe(
            modelType: _operations.modelType,
            operation: _operations.onDelete,
            variables: variables,
            filter: filter,
            creatorId: creatorId,
            owner: owner,
          )
          .map((response) => GraphqlSubscriptionResponse<Announcement>(
                type: SubscriptionType.onDelete,
                response: response,
              )),
    ]);

    return streams;
  }
}
