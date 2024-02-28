// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class GetQueryModelApiAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> get({
    required String id,
    APIAuthorizationType? authorizationMode,
    Map<String, dynamic>? variables,
  });
}
