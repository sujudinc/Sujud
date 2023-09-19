import 'dart:typed_data';

import 'package:sujud/abstracts/abstracts.dart';

class AttributedFile {
  const AttributedFile({
    required this.file,
    required this.path,
    required this.localPath,
    this.contentType,
  });

  final Uint8List file;
  final StoragePath path;
  final String localPath;
  final String? contentType;
}
