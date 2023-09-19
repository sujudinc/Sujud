// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

abstract class AmplifyModelApiOperations<T extends Model> {
  ModelType<T> get modelType;
  GetOperations get get;
  ListOperations get list;
  CreateOperations get create;
  UpdateOperations get update;
  DeleteOperations get delete;
  SubscriptionOperations get onCreate;
  SubscriptionOperations get onUpdate;
  SubscriptionOperations get onDelete;
}
