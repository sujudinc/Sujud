// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

abstract class QueryModelApiAbstract<T extends Model>
    implements GetQueryModelApiAbstract<T>, ListQueryModelApiAbstract<T> {}
