// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class UserOperation implements UserOperationAbstract {
  @override
  ModelType<User> get modelType => User.classType;

  @override
  GetOperation get get => GetOperation.getUser;

  @override
  ListOperation get list => ListOperation.listUsers;

  @override
  UpdateOperation get update => UpdateOperation.updateUser;

  @override
  SubscriptionOperation get onCreate => SubscriptionOperation.onCreateUser;

  @override
  SubscriptionOperation get onUpdate => SubscriptionOperation.onUpdateUser;

  @override
  SubscriptionOperation get onDelete => SubscriptionOperation.onDeleteUser;
}
