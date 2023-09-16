// 🎯 Dart imports:
import 'dart:typed_data';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';

abstract class AmplifyStorageServiceAbstract {
  Future<String> delete({
    required String path,
    StorageRemoveOptions? options,
  });

  Future<String> upload({
    required String path,
    required Uint8List file,
    required String contentType,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  });

  Future<String> download({
    required String path,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  });
}
