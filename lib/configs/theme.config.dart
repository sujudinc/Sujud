// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final light = kIsWeb
      ? ThemeData.light()
      : Platform.isIOS
          ? const CupertinoThemeData()
          : ThemeData.light();

  static final dark = kIsWeb
      ? ThemeData.dark()
      : Platform.isIOS
          ? const CupertinoThemeData()
          : ThemeData.dark();
}
