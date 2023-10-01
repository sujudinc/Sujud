// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

abstract class AmplifyModelApiAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> get(String id);

  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<(T?, List<GraphQLResponseError>)> create(T item);

  Future<(T?, List<GraphQLResponseError>)> update(T item);

  Future<(T?, List<GraphQLResponseError>)> delete(String id);

  Stream<GraphqlSubscriptionResponse<T>> subscribe({
    required ModelType<T> modelType,
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
