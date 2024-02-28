import 'package:amplify_flutter/amplify_flutter.dart';

class SubscriptionResponse<T extends Model> {
  SubscriptionResponse({
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
