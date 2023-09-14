// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';

class PrayerSchedule extends StatefulWidget {
  const PrayerSchedule({
    required this.prayerTimes,
    Key? key,
  }) : super(key: key);

  final List<PrayerTime> prayerTimes;

  @override
  State<PrayerSchedule> createState() => _PrayerScheduleState();
}

class _PrayerScheduleState extends State<PrayerSchedule> {
  final _prayerUtility = GetIt.instance.get<PrayerUtilityAbstract>(
    param1: <Mosque>[].first.monthlyPrayerSchedules!,
  );
  late Timer _timer;
  late Duration _duration;

  @override
  void initState() {
    super.initState();

    _setPrayers();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: widget.prayerTimes
            .map(
              (prayerTime) => prayerTime == _prayerUtility.nextPrayer()!
                  ? _buildNextPrayerTimeCard(context, prayerTime)
                  : _buildPrayerTimeCard(context, prayerTime),
            )
            .toList(),
      );

  void _setPrayers() {
    _duration = _prayerUtility.timeUntilNextPrayer()!;
  }

  void _startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) => setState(_setPrayers),
    );
  }

  Widget _nextPrayerTime(BuildContext context, PrayerTime prayerTime) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            prayerTime.type.name(context),
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            DateFormat('h:mm a').format(
              prayerTime.athan.getDateTimeInUtc(),
            ),
            style: const TextStyle(
              fontSize: 24.0,
            ),
          ),
        ],
      );

  Widget _nextPrayerCountdown(BuildContext context, PrayerTime prayerTime) =>
      CircularStepProgressIndicator(
        totalSteps: 100,
        currentStep: _prayerUtility.currentStep()!,
        stepSize: 5,
        selectedColor: Colors.black,
        unselectedColor: Colors.grey[200],
        padding: 0,
        width: 100,
        height: 100,
        selectedStepSize: 5,
        roundedCap: (_, __) => true,
        child: Center(
          child: Text(
            '${_duration.inHours.remainder(24).toString().padLeft(
                  2,
                  '0',
                )}:'
            '${_duration.inMinutes.remainder(60).toString().padLeft(
                  2,
                  '0',
                )}:'
            '${_duration.inSeconds.remainder(60).toString().padLeft(
                  2,
                  '0',
                )}',
          ),
        ),
      );

  Widget _buildNextPrayerTimeCard(
    BuildContext context,
    PrayerTime prayerTime,
  ) =>
      Container(
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        margin: const EdgeInsets.only(top: 15.0),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: <Widget>[
                    prayerTime.type.icon,
                    const SizedBox(width: 15.0),
                    Expanded(child: _nextPrayerTime(context, prayerTime)),
                  ],
                ),
              ),
              _nextPrayerCountdown(context, prayerTime),
            ],
          ),
        ),
      );

  Widget _buildPrayerTimeCard(BuildContext context, PrayerTime prayerTime) =>
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20.0,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        margin: const EdgeInsets.only(top: 15.0),
        child: Row(
          children: <Widget>[
            prayerTime.type.icon,
            const SizedBox(width: 15.0),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      prayerTime.type.name(context),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        DateFormat('h:mm a').format(
                          prayerTime.athan.getDateTimeInUtc(),
                        ),
                        style: const TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        DateFormat('h:mm a').format(
                          prayerTime.iqamah.getDateTimeInUtc(),
                        ),
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
