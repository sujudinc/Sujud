// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';

extension DayTyoeX on DayType {
  String name(BuildContext context) {
    final i18n = context.i18n;

    switch (this) {
      case DayType.MONDAY:
        return i18n.monday;
      case DayType.TUESDAY:
        return i18n.tuesday;
      case DayType.WEDNESDAY:
        return i18n.wednesday;
      case DayType.THURSDAY:
        return i18n.thursday;
      case DayType.FRIDAY:
        return i18n.friday;
      case DayType.SATURDAY:
        return i18n.saturday;
      case DayType.SUNDAY:
        return i18n.sunday;
    }
  }
}
