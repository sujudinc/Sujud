// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';

export 'amplify.config.dart';
export 'dependencies.config.dart';
export 'navigation_routes.configs.dart';
export 'seed_data.config.dart';
export 'theme.config.dart';

// Environment Variables
final String kEnvMode = dotenv.env['MODE']!;
final String kServer = kIsWeb
    ? dotenv.env['SERVER_WEB']!
    : Platform.isIOS || Platform.isMacOS
        ? dotenv.env['SERVER_IOS']!
        : dotenv.env['SERVER_ANDROID']!;
final String kWebSocket = kIsWeb
    ? dotenv.env['WEBSOCKET_WEB']!
    : Platform.isIOS || Platform.isMacOS
        ? dotenv.env['WEBSOCKET_IOS']!
        : dotenv.env['WEBSOCKET_ANDROID']!;

// Shared Preferences
const String kDidSetSharedPrefs = 'sujud_did_set_shared_prefs';
const String kDateLastOpened = 'sujud_date_last_opened';
const String kAppThemeLight = 'sujud_app_theme_light';
const String kHasReviewed = 'sujud_has_reviewed';
const String kIsDarkMode = 'sujud_is_dark_mode';

// UI
const kEdgeInsetsAll = EdgeInsets.all(25.0);
const kEdgeInsetsHor = EdgeInsets.symmetric(horizontal: 25);
const kEdgeInsetsVer = EdgeInsets.symmetric(vertical: 25);

const kDurationAnim = Duration(milliseconds: 1000);
const kDurationDelayAnim = Duration(milliseconds: 500);

final kAppBarHeight = kIsWeb
    ? AppBar().preferredSize.height
    : Platform.isIOS
        ? const CupertinoNavigationBar().preferredSize.height
        : AppBar().preferredSize.height;

final kScrollPhysics = kIsWeb
    ? const BouncingScrollPhysics()
    : Platform.isIOS
        ? const AlwaysScrollableScrollPhysics()
        : const BouncingScrollPhysics();

const kHeadingGap = 10.0;
const kContentGap = 20.0;
