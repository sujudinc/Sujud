import 'package:intl/intl.dart';
import 'package:sujud/models/models.dart';

extension HoursX on Hours {
  String toUserFriendlyString() {
    String formatTime(OperatingHours? operatingHours) {
      if (operatingHours == null) {
        return 'Closed';
      }

      final formatter = DateFormat('hh:mm a');
      final openTime = formatter.format(
        operatingHours.open.getDateTime(),
      );
      final closeTime = formatter.format(
        operatingHours.close.getDateTime(),
      );

      return '$openTime - $closeTime';
    }

    return 'Monday:\t\t\t\t\t\t\t${formatTime(monday?.operatingHours?.first)}\n'
        'Tuesday:\t\t\t\t\t\t\t${formatTime(tuesday?.operatingHours?.first)}\n'
        'Wednesday:\t\t${formatTime(wednesday?.operatingHours?.first)}\n'
        'Thursday:\t\t\t${formatTime(thursday?.operatingHours?.first)}\n'
        'Friday:\t\t\t\t\t\t\t\t${formatTime(friday?.operatingHours?.first)}\n'
        'Saturday:\t\t\t\t\t\t${formatTime(saturday?.operatingHours?.first)}\n'
        'Sunday:\t\t\t\t\t\t\t\t\t${formatTime(sunday?.operatingHours?.first)}';
  }
}
