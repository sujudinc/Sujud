// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class UpdateMutationModelApiAbstract<T extends Model> {
  Future<(T?, List<GraphQLResponseError>)> update({
    required T item,
    Map<String, dynamic>? condition,
    Map<String, dynamic>? variables,
  });
}
