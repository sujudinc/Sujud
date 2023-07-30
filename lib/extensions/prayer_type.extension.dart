// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 📦 Package imports:
import 'package:unicons/unicons.dart';

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

  IconData get icon {
    switch (this) {
      case PrayerType.FAJR:
        return UniconsLine.sunset;
      case PrayerType.THUHR:
        return UniconsLine.sun;
      case PrayerType.ASR:
        return UniconsLine.cloud_sun;
      case PrayerType.MAGHRIB:
        return UniconsLine.sunset;
      case PrayerType.ISHA:
        return UniconsLine.cloud_moon;
      case PrayerType.JUMUAH:
        return UniconsLine.sun;
      case PrayerType.EID_AL_ADHA:
        return UniconsLine.cloud_sun;
      case PrayerType.EID_AL_FITR:
        return UniconsLine.cloud_sun;
    }
  }
}
