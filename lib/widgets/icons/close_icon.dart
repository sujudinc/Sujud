import 'package:flutter/material.dart';
import 'package:sujud/abstracts/abstracts.dart';

class CloseIcon extends PlatformAwareIconAbstract {
  const CloseIcon({super.key});

  @override
  IconData? get android => Icons.close_rounded;

  @override
  IconData? get ios => Icons.close;

  @override
  IconData get web => Icons.close;
}
