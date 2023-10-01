// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:sujud/pages/pages.dart';
import 'package:sujud/widgets/widgets.dart';

class PrayerTimesTab extends StatefulWidget {
  const PrayerTimesTab({super.key});

  @override
  State<PrayerTimesTab> createState() => _PrayerTimesTabState();
}

class _PrayerTimesTabState extends State<PrayerTimesTab> {
  @override
  Widget build(BuildContext context) => PAScaffold(
        leading: IconButton(
          icon: SujudIcon.menu(),
          onPressed: () async => showModalBottomSheet(
            useRootNavigator: true,
            context: context,
            builder: (context) => const MosquesPage(),
          ),
        ),
        // title: <Mosque>[].first.name,
        kids: const Kids(
          children: <Widget>[
            Text('Prayer Times'),
            // HijriDate(
            //   prayerTimes: prayerUtility.currentDayPrayerTimes()!,
            // ),
            // PrayerSchedule(
            //   prayerTimes: prayerUtility.currentDayPrayerTimes()!,
            // ),
          ],
        ),
      );
}
