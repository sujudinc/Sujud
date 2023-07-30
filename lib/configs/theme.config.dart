// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeConfig {
  ThemeConfig._();

  static final light = kIsWeb
      ? _lightTheme
      : Platform.isIOS
          ? const CupertinoThemeData(
              primaryColor: Colors.black,
              primaryContrastingColor: Colors.white,
              barBackgroundColor: Colors.white,
              scaffoldBackgroundColor: _lightBackgroundColor,
              textTheme: CupertinoTextThemeData(
                primaryColor: Colors.black,
                textStyle: TextStyle(
                  color: Colors.black,
                ),
                actionTextStyle: TextStyle(
                  color: Colors.black,
                ),
                tabLabelTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 0.0,
                ),
                navTitleTextStyle: TextStyle(
                  color: Colors.black,
                ),
                navLargeTitleTextStyle: TextStyle(
                  color: Colors.black,
                ),
                navActionTextStyle: TextStyle(
                  color: Colors.black,
                ),
                pickerTextStyle: TextStyle(
                  color: Colors.black,
                ),
                dateTimePickerTextStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          : _lightTheme;

  static final dark = kIsWeb
      ? _darkTheme
      : Platform.isIOS
          ? const CupertinoThemeData(
              primaryColor: Colors.white,
              primaryContrastingColor: Colors.white,
              barBackgroundColor: Colors.white,
              scaffoldBackgroundColor: _lightBackgroundColor,
              textTheme: CupertinoTextThemeData(
                primaryColor: Colors.black,
                textStyle: TextStyle(
                  color: Colors.white,
                ),
                actionTextStyle: TextStyle(
                  color: Colors.white,
                ),
                tabLabelTextStyle: TextStyle(
                  color: Colors.white,
                ),
                navTitleTextStyle: TextStyle(
                  color: Colors.white,
                ),
                navLargeTitleTextStyle: TextStyle(
                  color: Colors.white,
                ),
                navActionTextStyle: TextStyle(
                  color: Colors.white,
                ),
                pickerTextStyle: TextStyle(
                  color: Colors.white,
                ),
                dateTimePickerTextStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          : _darkTheme;

  static final _lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme: const AppBarTheme(
      color: Colors.teal,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
    ),
  );

  static final _darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

const _lightBackgroundColor = Color(0xFFF9F9FB);
