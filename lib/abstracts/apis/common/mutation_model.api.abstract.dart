// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

abstract class MutationModelApiAbstract<T extends Model>
    implements
        CreateMutationModelApiAbstract<T>,
        UpdateMutationModelApiAbstract<T>,
        DeleteMutationModelApiAbstract<T> {}
