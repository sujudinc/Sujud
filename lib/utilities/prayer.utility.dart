// 📦 Package imports:
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:collection/collection.dart';
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class PrayerUtility implements PrayerUtilityAbstract {
  PrayerUtility({
    required List<MonthlyPrayerSchedule> monthlyPrayerSchedules,
  })  : _logger = GetIt.instance.get<LoggerUtilityAbstract>(),
        _monthlyPrayerSchedules = monthlyPrayerSchedules {
    _logger.log('📿 PrayerUtility');
  }

  final LoggerUtilityAbstract _logger;
  final List<MonthlyPrayerSchedule> _monthlyPrayerSchedules;

  @override
  List<PrayerTime>? currentMonthPrayerTimes() {
    final now = DateTime.now().toLocal();

    return _monthlyPrayerSchedules
        .firstWhereOrNull(
          (schedule) =>
              schedule.year == now.year && schedule.month == now.month,
        )
        ?.prayerTimes;
  }

  @override
  List<PrayerTime>? currentDayPrayerTimes() {
    final prayerTimes = currentMonthPrayerTimes();
    final nextPrayerTime = nextPrayer();

    if (prayerTimes == null || nextPrayerTime == null) {
      return null;
    }

    final now = convertTemporalToLocal(nextPrayerTime.athan);

    return prayerTimes.where((prayerTime) {
      final prayerTimeDate = convertTemporalToLocal(prayerTime.athan);

      return prayerTimeDate.day == now.day;
    }).toList();
  }

  @override
  Map<DateTime, List<PrayerTime>> prayerTimesGroupedByDay() {
    final Map<DateTime, List<PrayerTime>> prayerTimesByDay = {};

    for (final schedule in _monthlyPrayerSchedules) {
      for (final prayerTime in schedule.prayerTimes) {
        final prayerTimeDate = convertTemporalToLocal(prayerTime.athan);
        final dateKey = DateTime(
          prayerTimeDate.year,
          prayerTimeDate.month,
          prayerTimeDate.day,
        );

        if (!prayerTimesByDay.containsKey(dateKey)) {
          prayerTimesByDay[dateKey] = [];
        }

        prayerTimesByDay[dateKey]!.add(prayerTime);
      }
    }

    return prayerTimesByDay;
  }

  @override
  int? currentStep() {
    final timeBetweenPrayers = _timeBetweenTwoPrayers();
    final timeRemaining = timeUntilNextPrayer();

    if (timeBetweenPrayers == null || timeRemaining == null) {
      return null;
    }

    final double totalSteps = timeBetweenPrayers.inMinutes.toDouble();
    final double stepsLeft = timeRemaining.inMinutes.toDouble();

    if (totalSteps == 0) {
      return null;
    }

    return ((stepsLeft / totalSteps) * 100).round();
  }

  @override
  PrayerTime? nextPrayer() {
    final prayerTimes = currentMonthPrayerTimes();

    if (prayerTimes == null || prayerTimes.isEmpty) {
      return null;
    }

    final prayerTime = prayerTimes.firstWhereOrNull(
      (prayerTime) => convertTemporalToLocal(prayerTime.athan).isAfter(
        DateTime.now().toLocal(),
      ),
    );

    return prayerTime;
  }

  @override
  Duration? timeUntilNextPrayer() {
    final now = DateTime.now().toLocal();
    final nextPrayerTime = nextPrayer();

    if (nextPrayerTime == null) {
      return null;
    }

    final nextTime = convertTemporalToLocal(nextPrayerTime.athan);

    return nextTime.difference(now);
  }

  @override
  DateTime convertTemporalToLocal(TemporalDateTime temporal) => DateTime.parse(
        temporal.getDateTimeInUtc().toIso8601String().replaceAll('Z', ''),
      );

  PrayerTime? _pastPrayer() {
    final prayerTimes = currentMonthPrayerTimes();

    if (prayerTimes == null || prayerTimes.isEmpty) {
      return null;
    }

    final prayerTime = prayerTimes.lastWhereOrNull(
      (prayerTime) => !convertTemporalToLocal(prayerTime.athan).isAfter(
        DateTime.now().toLocal(),
      ),
    );

    return prayerTime;
  }

  Duration? _timeBetweenTwoPrayers() {
    final pastPrayerTime = _pastPrayer();
    final nextPrayerTime = nextPrayer();

    if (pastPrayerTime == null || nextPrayerTime == null) {
      return null;
    }

    final pastTime = convertTemporalToLocal(pastPrayerTime.athan);
    final nextTime = convertTemporalToLocal(nextPrayerTime.athan);

    return nextTime.difference(pastTime);
  }
}
