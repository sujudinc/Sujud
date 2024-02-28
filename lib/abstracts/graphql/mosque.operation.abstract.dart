import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class MosqueOperationAbstract
    implements
        GraphqlQueryOperationsAbstract<Mosque>,
        GraphqlMutationOperationsAbstract<Mosque>,
        GraphqlSubscriptionOperationAbstract<Mosque> {}
