// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class UserApiAbstract
    implements
        QueryModelApiAbstract<User>,
        UpdateMutationModelApiAbstract<User>,
        SubscriptionModelApiAbstract<User> {}
