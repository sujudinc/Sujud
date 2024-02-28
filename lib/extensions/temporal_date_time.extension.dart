// 📦 Package imports:
import 'package:amplify_datastore/amplify_datastore.dart';

extension TemporalDateTimeX on TemporalDateTime {
  String get formattedTimeAgo {
    final now = DateTime.now();
    final difference = now.difference(getDateTimeInUtc());

    if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else if (difference.inSeconds > 0) {
      return '${difference.inSeconds} seconds ago';
    } else {
      return 'Just now';
    }
  }
}
