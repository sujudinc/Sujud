import 'package:flutter/material.dart';
import 'package:sujud/abstracts/abstracts.dart';

class BackIcon extends PlatformAwareIconAbstract {
  const BackIcon({super.key});

  @override
  IconData? get android => Icons.arrow_back_rounded;

  @override
  IconData? get ios => Icons.arrow_back_ios_new;

  @override
  IconData get web => Icons.arrow_back;
}
