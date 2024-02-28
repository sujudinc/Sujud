// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:ionicons/ionicons.dart';
import 'package:unicons/unicons.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';

class SujudIcon extends StatelessWidget {
  const SujudIcon(
    this.icon, {
    this.ios,
    this.android,
    this.color,
    this.size,
    super.key,
  });

  final IconData icon;
  final IconData? ios;
  final IconData? android;
  final Color? color;
  final double? size;

  factory SujudIcon.add({double? size}) => SujudIcon(
        Ionicons.add,
        size: size,
      );

  factory SujudIcon.back() => const SujudIcon(
        Icons.arrow_back,
        ios: Icons.arrow_back_ios_new,
        android: Icons.arrow_back_rounded,
      );

  factory SujudIcon.close({Color? color, double? size}) => SujudIcon(
        Icons.close,
        color: color,
        size: size,
      );

  factory SujudIcon.facebook() => const SujudIcon(UniconsLine.facebook);

  factory SujudIcon.instagram() => const SujudIcon(UniconsLine.instagram_alt);

  factory SujudIcon.twitter() => const SujudIcon(UniconsLine.twitter);

  factory SujudIcon.youtube() => const SujudIcon(UniconsLine.youtube);

  factory SujudIcon.share({double? size}) => SujudIcon(
        Ionicons.share_outline,
        size: size,
      );

  factory SujudIcon.like({bool isFilled = false, double? size}) => SujudIcon(
        isFilled ? Ionicons.heart : Ionicons.heart_outline,
        size: size,
      );

  factory SujudIcon.comment({double? size}) => SujudIcon(
        Ionicons.chatbox_outline,
        size: size,
      );

  factory SujudIcon.bookmark({bool isFilled = false, double? size}) =>
      SujudIcon(
        isFilled ? Ionicons.bookmark : Ionicons.bookmark_outline,
        size: size,
      );

  factory SujudIcon.send({double? size}) => SujudIcon(
        Ionicons.send_outline,
        size: size,
        color: Colors.white,
      );

  factory SujudIcon.fajr({double? size}) => SujudIcon(
        UniconsLine.sunset,
        size: size,
      );

  factory SujudIcon.thuhr({double? size}) => SujudIcon(
        UniconsLine.sun,
        size: size,
      );

  factory SujudIcon.asr({double? size}) => SujudIcon(
        UniconsLine.cloud_sun,
        size: size,
      );

  factory SujudIcon.maghrib({double? size}) => SujudIcon(
        UniconsLine.sunset,
        size: size,
      );

  factory SujudIcon.isha({double? size}) => SujudIcon(
        UniconsLine.cloud_moon,
        size: size,
      );

  factory SujudIcon.jumuah({double? size}) => SujudIcon(
        UniconsLine.sun,
        size: size,
      );

  factory SujudIcon.eidAlAdha({double? size}) => SujudIcon(
        UniconsLine.cloud_sun,
        size: size,
      );

  factory SujudIcon.eidAlFitr({double? size}) => SujudIcon(
        UniconsLine.cloud_sun,
        size: size,
      );

  factory SujudIcon.dashboard() => const SujudIcon(Ionicons.moon_outline);

  factory SujudIcon.image({double? size}) => SujudIcon(
        Ionicons.image_outline,
        size: size,
      );

  factory SujudIcon.camera({double? size}) => SujudIcon(
        Ionicons.camera_outline,
        size: size,
      );

  factory SujudIcon.settings() => const SujudIcon(Ionicons.settings_outline);

  factory SujudIcon.menu() => const SujudIcon(Ionicons.menu_outline);

  factory SujudIcon.rightArrow({double? size}) => SujudIcon(
        UniconsLine.arrow_right,
        size: size,
      );

  factory SujudIcon.rightArrowCircle({double? size}) => SujudIcon(
        UniconsLine.arrow_circle_right,
        size: size,
      );

  factory SujudIcon.leftArrowCircle({double? size}) => SujudIcon(
        UniconsLine.arrow_circle_left,
        size: size,
      );

  factory SujudIcon.location({double? size}) => SujudIcon(
        Ionicons.location_outline,
        size: size,
      );

  factory SujudIcon.trash({Color? color, double? size}) => SujudIcon(
        Ionicons.trash_outline,
        color: color,
        size: size,
      );

  @override
  Widget build(BuildContext context) => Icon(
        kIsWeb
            ? icon
            : Platform.isIOS
                ? ios ?? icon
                : android ?? icon,
        color: color ??
            (context.theme.brightness == Brightness.light
                ? Colors.black
                : Colors.white),
        size: size,
      );
}
