// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:sujud/models/models.dart';

abstract class SubscriptionModelApiAbstract<T extends Model> {
  Stream<SubscriptionResponse<T>> subscribe({
    Map<String, dynamic>? variables,
    Map<String, dynamic>? filter,
    String? creatorId,
    String? owner,
  });
}
