// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyAnalyticsServiceAbstract {
  Future<void> identifyUser({
    required String userId,
    required UserProfile userProfile,
  });

  Future<void> logEvent({required AnalyticsEvent event});
}
