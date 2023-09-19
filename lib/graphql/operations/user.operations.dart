// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/graphql/graphql.dart';
import 'package:sujud/models/models.dart';

class UserOperations implements AmplifyModelApiOperations<User> {
  @override
  ModelType<User> get modelType => User.classType;

  @override
  GetOperations get get => GetOperations.getUser;

  @override
  ListOperations get list => ListOperations.listUsers;

  @override
  CreateOperations get create => CreateOperations.createUser;

  @override
  UpdateOperations get update => UpdateOperations.updateUser;

  @override
  DeleteOperations get delete => DeleteOperations.deleteUser;

  @override
  SubscriptionOperations get onCreate => SubscriptionOperations.onCreateUser;

  @override
  SubscriptionOperations get onUpdate => SubscriptionOperations.onUpdateUser;

  @override
  SubscriptionOperations get onDelete => SubscriptionOperations.onDeleteUser;
}
