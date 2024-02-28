// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

abstract class ListQueryModelApiAbstract<T extends Model> {
  Future<(GraphQLListResponse<T>, List<GraphQLResponseError>)> list({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    APIAuthorizationType? authorizationMode,
    int? limit,
    String? nextToken,
  });
}
