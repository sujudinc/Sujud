// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class MosqueApiAbstract
    implements
        QueryModelApiAbstract<Mosque>,
        MutationModelApiAbstract<Mosque>,
        SubscriptionModelApiAbstract<Mosque> {}
