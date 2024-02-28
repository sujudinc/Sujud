// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class DeleteMutationModelApiAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> delete({
    required String id,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });
}
