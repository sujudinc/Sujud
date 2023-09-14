// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class PrayerTimesTab extends StatelessWidget {
  const PrayerTimesTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final prayerUtility = GetIt.instance.get<PrayerUtilityAbstract>(
      param1: <Mosque>[].first.monthlyPrayerSchedules!,
    );

    return PAScaffold(
      leading: IconButton(
        icon: SujudIcon.menu(),
        onPressed: () async => showModalBottomSheet(
          useRootNavigator: true,
          context: context,
          builder: _buildMosqueListPage,
        ),
      ),
      title: <Mosque>[].first.name,
      kids: Kids(
        child: ListView(
          children: <Widget>[
            HijriDate(
              prayerTimes: prayerUtility.currentDayPrayerTimes()!,
            ),
            PrayerSchedule(
              prayerTimes: prayerUtility.currentDayPrayerTimes()!,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMosqueListPage(BuildContext context) => PAScaffold(
        title: 'Mosques',
        kids: Kids(
          children: <Widget>[
            Container(),
          ],
        ),
      );
}
