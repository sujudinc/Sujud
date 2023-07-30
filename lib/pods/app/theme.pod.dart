// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ThemeProvider extends ChangeNotifier {
  var _isDarkModeEnabled = false;

  bool get isDarkModeEnabled => _isDarkModeEnabled;

  void changeThemeMode() {
    _isDarkModeEnabled = !isDarkModeEnabled;
    notifyListeners();
  }
}

final themePod = ChangeNotifierProvider<ThemeProvider>(
  (ref) => ThemeProvider(),
);
