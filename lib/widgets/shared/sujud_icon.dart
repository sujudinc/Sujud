import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:unicons/unicons.dart';

class SujudIcon extends StatelessWidget {
  const SujudIcon(
    this.icon, {
    this.ios,
    this.android,
    this.size,
    super.key,
  });

  final IconData icon;
  final IconData? ios;
  final IconData? android;
  final double? size;

  factory SujudIcon.add({double? size}) => SujudIcon(
        Icons.add,
        size: size,
      );

  factory SujudIcon.back() => const SujudIcon(
        Icons.arrow_back,
        ios: Icons.arrow_back_ios_new,
        android: Icons.arrow_back_rounded,
      );

  factory SujudIcon.close() => const SujudIcon(Icons.close);

  factory SujudIcon.facebook() => const SujudIcon(UniconsLine.facebook);

  factory SujudIcon.instagram() => const SujudIcon(UniconsLine.instagram_alt);

  factory SujudIcon.twitter() => const SujudIcon(UniconsLine.twitter);

  factory SujudIcon.youtube() => const SujudIcon(UniconsLine.youtube);

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

  factory SujudIcon.dashboard() => const SujudIcon(UniconsLine.archway);

  factory SujudIcon.settings() => const SujudIcon(UniconsLine.cog);

  factory SujudIcon.menu() => const SujudIcon(UniconsLine.bars);

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
        UniconsLine.location_point,
        size: size,
      );

  @override
  Widget build(BuildContext context) => Icon(
        kIsWeb
            ? icon
            : Platform.isIOS
                ? ios ?? icon
                : android ?? icon,
        color: context.theme.brightness == Brightness.light
            ? Colors.black
            : Colors.white,
      );
}
