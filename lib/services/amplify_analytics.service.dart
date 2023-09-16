// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyAnalyticsService implements AmplifyAnalyticsServiceAbstract {
  AmplifyAnalyticsService({AnalyticsCategory? analytics})
      : _analytics = analytics ?? Amplify.Analytics;

  final AnalyticsCategory _analytics;

  @override
  Future<void> identifyUser({
    required String userId,
    required UserProfile userProfile,
  }) async =>
      _analytics.identifyUser(
        userId: userId,
        userProfile: userProfile,
      );

  @override
  Future<void> logEvent({
    required AnalyticsEvent event,
  }) async =>
      _analytics.recordEvent(event: event);
}
