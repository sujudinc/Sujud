// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:image_picker/image_picker.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class MediaUtility implements MediaUtilityAbstract {
  MediaUtility({ImagePicker? imagePicker})
      : _imagePicker = imagePicker ?? ImagePicker();

  final ImagePicker _imagePicker;

  @override
  Future<Uint8List?> get imageFromCamera async {
    final xFile = await _imagePicker.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
    );

    if (xFile == null) {
      return null;
    }

    return xFile.readAsBytes();
  }

  @override
  Future<Uint8List?> get imageFromGallery async {
    final xFile = await _imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (xFile == null) {
      return null;
    }

    return xFile.readAsBytes();
  }

  @override
  Future<List<Uint8List>> get imagesFromGallery async {
    final xFiles = await _imagePicker.pickMultiImage(
      imageQuality: 50,
    );
    final images = <Uint8List>[];

    for (final xFile in xFiles) {
      images.add(await xFile.readAsBytes());
    }

    return images;
  }

  @override
  Future<Uint8List?> get videoFromCamera async {
    final xFile = await _imagePicker.pickVideo(
      source: ImageSource.camera,
      maxDuration: const Duration(seconds: 30),
    );

    if (xFile == null) {
      return null;
    }

    return xFile.readAsBytes();
  }

  @override
  Future<Uint8List?> get videoFromGallery async {
    final xFile = await _imagePicker.pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(seconds: 30),
    );

    if (xFile == null) {
      return null;
    }

    return xFile.readAsBytes();
  }
}
