// 📦 Package imports:
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class GraphqlServiceAbstract {
  Future<void> initHive();

  GraphQLClient client({required String token});

  Future<Map<String, dynamic>?> query(
    String token,
    query, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Duration? pollInterval,
    Context? context,
    Future<void> Function(OperationException?)? onError,
  });

  Future<Map<String, dynamic>?> mutate(
    String token,
    query, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Context? context,
    Object? optimisticResult,
    OnMutationCompleted? onCompleted,
    OnMutationUpdate? update,
    Future<void> Function(OperationException?)? onError,
  });

  Stream<QueryResult> subscription(
    String token,
    document, {
    String? operationName,
    Map<String, dynamic> variables = const {},
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
    CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Context? context,
  });
}
