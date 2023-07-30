// 📦 Package imports:
import 'package:graphql_flutter/graphql_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';

class GraphQLService implements GraphqlServiceAbstract {
  @override
  Future<void> initHive() async => await initHiveForFlutter();

  @override
  GraphQLClient client({required String token}) => GraphQLClient(
        link: _link(token),
        cache: GraphQLCache(
          store: HiveStore(),
        ),
      );

  @override
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
  }) async {
    final QueryResult result = await client(token: token).query(
      QueryOptions(
        document: query,
        operationName: operationName,
        variables: variables,
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
        cacheRereadPolicy: cacheRereadPolicy,
        optimisticResult: optimisticResult,
        pollInterval: pollInterval,
        context: context,
        onError: onError,
      ),
    );

    if (result.hasException) {
      if (onError != null) {
        onError(result.exception);
      }

      return null;
    }

    return result.data;
  }

  @override
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
    Future<void> Function(OperationException? p1)? onError,
  }) async {
    final QueryResult result = await client(token: token).mutate(
      MutationOptions(
        document: query,
        operationName: operationName,
        variables: variables,
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
        cacheRereadPolicy: cacheRereadPolicy,
        optimisticResult: optimisticResult,
        context: context,
        onCompleted: onCompleted,
        update: update,
        onError: onError,
      ),
    );

    if (result.hasException) {
      if (onError != null) {
        onError(result.exception);
      }

      return null;
    }

    return result.data;
  }

  @override
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
  }) {
    final result = client(token: token).subscribe(
      SubscriptionOptions(
        document: document,
        operationName: operationName,
        variables: variables,
        fetchPolicy: fetchPolicy,
        errorPolicy: errorPolicy,
        cacheRereadPolicy: cacheRereadPolicy,
        optimisticResult: optimisticResult,
        context: context,
      ),
    );

    return result;
  }

  // Use this method to get access to websocket
  Link _link(String token) => AuthLink(
        getToken: () async => 'Bearer $token',
      ).concat(
        Link.split(
          (request) => request.isSubscription,
          WebSocketLink(
            kWebSocket,
            config: SocketClientConfig(
              inactivityTimeout: const Duration(hours: 1),
              initialPayload: {
                'Authorization': 'Bearer $token',
              },
            ),
          ),
          HttpLink(kServer),
        ),
      );
}
