import 'package:flutter/material.dart';
import 'package:sujud/abstracts/abstracts.dart';

class AddIcon extends PlatformAwareIconAbstract {
  const AddIcon({super.key});

  @override
  IconData? get android => null;

  @override
  IconData? get ios => null;

  @override
  IconData get web => Icons.add;
}
