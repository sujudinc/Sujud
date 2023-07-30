// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/i18n/app_localizations.dart';

extension ContextX on BuildContext {
  AppLocalizations get i18n => AppLocalizations.of(this);
  ThemeData get theme => Theme.of(this);
  MediaQueryData get media => MediaQuery.of(this);
}
