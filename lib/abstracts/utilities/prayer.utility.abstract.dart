// 📦 Package imports:
import 'package:amplify_datastore/amplify_datastore.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

abstract class PrayerUtilityAbstract {
  List<PrayerTime>? currentMonthPrayerTimes();
  List<PrayerTime>? currentDayPrayerTimes();
  Map<DateTime, List<PrayerTime>> prayerTimesGroupedByDay();

  PrayerTime? nextPrayer();

  int? currentStep();

  Duration? timeUntilNextPrayer();

  DateTime convertTemporalToLocal(TemporalDateTime temporal);
}
