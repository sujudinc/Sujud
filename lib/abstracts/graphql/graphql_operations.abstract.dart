// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

abstract class AmplifyModelApiOperationsBase<T extends Model> {
  ModelType<T> get modelType;
}

abstract class GraphqlQueryOperations<T extends Model>
    extends AmplifyModelApiOperationsBase<T> {
  GetOperations get get;
  ListOperations get list;
}

abstract class GraphqlMutationOperations<T extends Model>
    extends AmplifyModelApiOperationsBase<T> {
  CreateOperations get create;
  UpdateOperations get update;
  DeleteOperations get delete;
}

abstract class GraphqlSubscriptionOperations<T extends Model>
    extends AmplifyModelApiOperationsBase<T> {
  SubscriptionOperations get onCreate;
  SubscriptionOperations get onUpdate;
  SubscriptionOperations get onDelete;
}
