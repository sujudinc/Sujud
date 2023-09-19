import 'package:image_picker/image_picker.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/models.dart';

class MediaUtility implements MediaUtilityAbstract {
  MediaUtility({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  @override
  Future<List<AttributedFile>> multiImages({
    required StoragePath path,
  }) async {
    final images = <AttributedFile>[];
    final xFiles = await _imagePicker.pickMultipleMedia(
      imageQuality: 50,
    );

    for (final xFile in xFiles) {
      images.add(AttributedFile(
        file: await xFile.readAsBytes(),
        path: path,
        localPath: xFile.path,
        contentType: xFile.mimeType,
      ));
    }

    return images;
  }

  @override
  Future<AttributedFile?> image({
    required Source source,
    required StoragePath path,
  }) async {
    XFile? xFile;

    switch (source) {
      case Source.camera:
        xFile = await _imagePicker.pickImage(
          source: ImageSource.camera,
          imageQuality: 50,
        );
        break;
      case Source.gallery:
        xFile = await _imagePicker.pickImage(
          source: ImageSource.gallery,
          imageQuality: 50,
        );
        break;
    }

    if (xFile == null) {
      return null;
    }

    return AttributedFile(
      file: await xFile.readAsBytes(),
      path: path,
      localPath: xFile.path,
      contentType: xFile.mimeType,
    );
  }

  @override
  Future<AttributedFile?> video({
    required Source source,
    required StoragePath path,
  }) async {
    XFile? xFile;

    switch (source) {
      case Source.camera:
        xFile = await _imagePicker.pickVideo(
          source: ImageSource.camera,
          maxDuration: const Duration(seconds: 30),
        );
        break;
      case Source.gallery:
        xFile = await _imagePicker.pickVideo(
          source: ImageSource.gallery,
          maxDuration: const Duration(seconds: 30),
        );
        break;
    }

    if (xFile == null) {
      return null;
    }

    return AttributedFile(
      file: await xFile.readAsBytes(),
      path: path,
      localPath: xFile.path,
      contentType: xFile.mimeType,
    );
  }
}
