// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';

abstract class PlatformAwareIconAbstract extends StatelessWidget {
  const PlatformAwareIconAbstract({super.key});

  IconData get web;
  IconData? get ios;
  IconData? get android;

  @override
  Widget build(BuildContext context) => Icon(
        kIsWeb
            ? web
            : Platform.isIOS
                ? ios ?? web
                : android ?? web,
    color: context.theme.brightness == Brightness.light
        ? Colors.black
        : Colors.white,
      );
}
