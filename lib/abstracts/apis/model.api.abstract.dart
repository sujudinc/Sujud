// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

abstract class ModelApiAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> get({
    required String id,
    Map<String, dynamic>? variables,
  });

  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<(T?, List<GraphQLResponseError>)> create({
    required T item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<(T?, List<GraphQLResponseError>)> update({
    required T item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<(T?, List<GraphQLResponseError>)> delete({
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Stream<GraphqlSubscriptionResponse<T>> subscribe({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  });
}

class GraphqlSubscriptionResponse<T extends Model> {
  GraphqlSubscriptionResponse({
    required this.type,
    required this.response,
  });

  final SubscriptionType type;
  final GraphQLResponse<T> response;
}

enum SubscriptionType {
  onCreate,
  onUpdate,
  onDelete,
}
