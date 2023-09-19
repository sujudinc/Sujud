import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

abstract class MediaUtilityAbstract {
  Future<List<AttributedFile>> multiImages({
    required StoragePath path,
  });
  Future<AttributedFile?> image({
    required Source source,
    required StoragePath path,
  });
  Future<AttributedFile?> video({
    required Source source,
    required StoragePath path,
  });
}

enum Source {
  camera,
  gallery,
}
