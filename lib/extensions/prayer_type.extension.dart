// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:sujud/widgets/shared/shared.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';

extension PrayerTypeX on PrayerType {
  String name(BuildContext context) {
    final i18n = context.i18n;

    switch (this) {
      case PrayerType.FAJR:
        return i18n.fajr;
      case PrayerType.THUHR:
        return i18n.thuhr;
      case PrayerType.ASR:
        return i18n.asr;
      case PrayerType.MAGHRIB:
        return i18n.maghrib;
      case PrayerType.ISHA:
        return i18n.isha;
      case PrayerType.JUMUAH:
        return i18n.jumuah;
      case PrayerType.EID_AL_ADHA:
        return i18n.eidAlAdha;
      case PrayerType.EID_AL_FITR:
        return i18n.eidAlFitr;
      default:
        throw UnimplementedError('Unknown prayer type');
    }
  }

  Widget get icon {
    switch (this) {
      case PrayerType.FAJR:
        return SujudIcon.fajr(size: 40.0);
      case PrayerType.THUHR:
        return SujudIcon.thuhr(size: 40.0);
      case PrayerType.ASR:
        return SujudIcon.asr(size: 40.0);
      case PrayerType.MAGHRIB:
        return SujudIcon.maghrib(size: 40.0);
      case PrayerType.ISHA:
        return SujudIcon.isha(size: 40.0);
      case PrayerType.JUMUAH:
        return SujudIcon.jumuah(size: 40.0);
      case PrayerType.EID_AL_ADHA:
        return SujudIcon.eidAlAdha(size: 40.0);
      case PrayerType.EID_AL_FITR:
        return SujudIcon.eidAlFitr(size: 40.0);
    }
  }
}
