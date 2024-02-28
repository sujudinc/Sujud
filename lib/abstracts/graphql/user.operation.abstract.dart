import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class UserOperationAbstract
    implements
        GraphqlQueryOperationsAbstract<User>,
        GraphqlUpdateOperationAbstract<User>,
        GraphqlSubscriptionOperationAbstract<User> {}
