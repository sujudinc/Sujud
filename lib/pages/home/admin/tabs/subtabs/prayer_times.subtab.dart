import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class PrayerTimesSubtab extends StatefulWidget {
  const PrayerTimesSubtab({super.key});

  @override
  State<PrayerTimesSubtab> createState() => _PrayerTimesSubtabState();
}

class _PrayerTimesSubtabState extends State<PrayerTimesSubtab> {
  late final _homePageCubit = context.read<HomePageCubit>();

  @override
  Widget build(BuildContext context) {
    final selectedMosque = _homePageCubit.selectedMosque;

    return Scaffold(
      body: selectedMosque?.announcements == null ||
              selectedMosque!.announcements!.isEmpty
          ? _buildEmptyView(context)
          : _buildFeedView(context),
    );
  }

  Widget _buildFeedView(BuildContext context) {
    final selectedMosque = _homePageCubit.selectedMosque;

    return ListView.builder(
      itemBuilder: (context, index) {
        final announcement = selectedMosque!.announcements![index];

        return ListTile(
          title: Text(announcement.title),
        );
      },
      itemCount: selectedMosque?.announcements?.length ?? 0,
    );
  }

  Widget _buildEmptyView(BuildContext context) {
    final i18n = context.i18n;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Setup your prayer times...',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'You can setup your prayer times here.',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 25.0,
          ),
          SujudButton(
            text: i18n.buttonCreatePrayerTime,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
