// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';

// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

abstract class AmplifyApiServiceAbstract<T extends Model> {
  Future<GraphQLResponse<T>> get({
    required ModelType<T> modelType,
    required GetOperation operation,
    required String id,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
  });

  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    required ModelType<T> modelType,
    required ListOperation operation,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    int? limit,
    String? nextToken,
  });

  Future<GraphQLResponse<T>> create({
    required ModelType<T> modelType,
    required CreateOperation operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<GraphQLResponse<T>> update({
    required ModelType<T> modelType,
    required UpdateOperation operation,
    required Map<String, dynamic> input,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Future<GraphQLResponse<T>> delete({
    required ModelType<T> modelType,
    required DeleteOperation operation,
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });

  Stream<GraphQLResponse<T>> subscribe({
    required ModelType<T> modelType,
    required SubscriptionOperation operation,
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  });
}

class GraphQLListResponse<T extends Model> {
  GraphQLListResponse({
    this.items,
    this.nextToken,
  });

  final List<T?>? items;
  final String? nextToken;
}
