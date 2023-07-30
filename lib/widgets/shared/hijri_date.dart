// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hijri/hijri_calendar.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

class HijriDate extends StatelessWidget {
  const HijriDate({
    required this.prayerTimes,
    Key? key,
  }) : super(key: key);

  final List<PrayerTime> prayerTimes;

  @override
  Widget build(BuildContext context) {
    final hijriDate = HijriCalendar.now();

    return Text(
      '${hijriDate.longMonthName} ${hijriDate.hDay}, ${hijriDate.hYear} AH',
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
