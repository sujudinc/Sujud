// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/seed_data.config.dart';
import 'package:sujud/widgets/widgets.dart';

class PrayerTimesTab extends StatelessWidget {
  PrayerTimesTab({
    Key? key,
  }) : super(key: key);

  final _prayerUtility = GetIt.instance.get<PrayerUtilityAbstract>(
    param1: sampleMosque.monthlyPrayerSchedules!,
  );

  @override
  Widget build(BuildContext context) => PAScaffold(
        leading: IconButton(
          icon: SujudIcon.menu(),
          onPressed: () async => showModalBottomSheet(
            useRootNavigator: true,
            context: context,
            builder: _buildMosqueListPage,
          ),
        ),
        title: sampleMosque.name,
        kids: Kids(
          child: ListView(
            children: <Widget>[
              HijriDate(
                prayerTimes: _prayerUtility.currentDayPrayerTimes()!,
              ),
              PrayerSchedule(
                prayerTimes: _prayerUtility.currentDayPrayerTimes()!,
              ),
            ],
          ),
        ),
      );

  Widget _buildMosqueListPage(BuildContext context) => PAScaffold(
        title: 'Mosques',
        kids: Kids(
          children: <Widget>[
            Container(),
          ],
        ),
      );
}
