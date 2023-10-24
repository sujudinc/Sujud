// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
// 🌎 Project imports:
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class AdminPrayerTimesSubtab extends StatefulWidget {
  const AdminPrayerTimesSubtab({super.key});

  @override
  State<AdminPrayerTimesSubtab> createState() => _AdminPrayerTimesSubtabState();
}

class _AdminPrayerTimesSubtabState extends State<AdminPrayerTimesSubtab>
    with AutomaticKeepAliveClientMixin {
  final _prayTimesSubtabCubit = AdminPrayerTimesSubtabCubit();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final i18n = context.i18n;
    final selectedMosque = _prayTimesSubtabCubit.selectedMosque;

    return Scaffold(
      body: selectedMosque?.monthlyPrayerSchedules == null ||
              selectedMosque!.monthlyPrayerSchedules!.isEmpty
          ? EmptyStateView(
              title: 'Setup your prayer times...',
              description: 'You can setup your prayer times here.',
              buttonLabel: i18n.buttonCreatePrayerTime,
              onTap: () => const CreateMosqueRoute().go(context),
            )
          : BlocBuilder<AdminPrayerTimesSubtabCubit,
              AdminPrayerTimesSubtabState>(
              builder: (context, state) => Container(),
            ),
    );
  }
}
