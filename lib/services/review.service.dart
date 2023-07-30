// 📦 Package imports:
import 'package:in_app_review/in_app_review.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class ReviewService implements ReviewServiceAbstract {
  ReviewService({InAppReview? inAppReview})
      : _inAppReview = inAppReview ?? InAppReview.instance;

  final InAppReview _inAppReview;

  @override
  Future<bool> updateAvailable() => _inAppReview.isAvailable();

  @override
  Future<void> request() async => await _inAppReview.requestReview();
}
