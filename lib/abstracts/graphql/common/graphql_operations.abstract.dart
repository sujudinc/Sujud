// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/graphql/graphql.dart';

abstract class AmplifyModelApiOperationsAbstract<T extends Model> {
  ModelType<T> get modelType;
}

abstract class GraphqlGetOperationAbstract<T extends Model> {
  GetOperation get get;
}

abstract class GraphqlListOperationAbstract<T extends Model> {
  ListOperation get list;
}

abstract class GraphqlQueryOperationsAbstract<T extends Model>
    implements
        AmplifyModelApiOperationsAbstract<T>,
        GraphqlGetOperationAbstract<T>,
        GraphqlListOperationAbstract<T> {}

abstract class GraphqlCreateOperationAbstract<T extends Model> {
  CreateOperation get create;
}

abstract class GraphqlUpdateOperationAbstract<T extends Model> {
  UpdateOperation get update;
}

abstract class GraphqlDeleteOperationAbstract<T extends Model> {
  DeleteOperation get delete;
}

abstract class GraphqlMutationOperationsAbstract<T extends Model>
    implements
        AmplifyModelApiOperationsAbstract<T>,
        GraphqlCreateOperationAbstract<T>,
        GraphqlUpdateOperationAbstract<T>,
        GraphqlDeleteOperationAbstract<T> {}

abstract class GraphqlOnCreateOperationAbstract<T extends Model> {
  SubscriptionOperation get onCreate;
}

abstract class GraphqlOnUpdateOperationAbstract<T extends Model> {
  SubscriptionOperation get onUpdate;
}

abstract class GraphqlOnDeleteOperationAbstract<T extends Model> {
  SubscriptionOperation get onDelete;
}

abstract class GraphqlSubscriptionOperationAbstract<T extends Model>
    implements
        AmplifyModelApiOperationsAbstract<T>,
        GraphqlOnCreateOperationAbstract<T>,
        GraphqlOnUpdateOperationAbstract<T>,
        GraphqlOnDeleteOperationAbstract<T> {}
