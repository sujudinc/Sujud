// 🎯 Dart imports:
import 'dart:typed_data';

// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class AmplifyStorageService implements AmplifyStorageServiceAbstract {
  AmplifyStorageService({StorageCategory? s3}) : _s3 = s3 ?? Amplify.Storage;

  final StorageCategory _s3;

  @override
  Future<String> delete({
    required String path,
    StorageRemoveOptions? options,
  }) async =>
      (await _s3
              .remove(
                key: path,
                options: options,
              )
              .result)
          .removedItem
          .key;

  @override
  Future<String> download({
    required String path,
    StorageDownloadDataOptions? options,
    void Function(StorageTransferProgress)? onProgress,
  }) async =>
      (await _s3
              .downloadData(
                key: path,
                options: options,
                onProgress: onProgress,
              )
              .result)
          .downloadedItem
          .key;

  @override
  Future<String> upload({
    required String path,
    required Uint8List file,
    required String contentType,
    StorageUploadDataOptions? options,
    void Function(StorageTransferProgress)? onProgress,
  }) async =>
      (await _s3
              .uploadData(
                key: path,
                data: S3DataPayload.bytes(file, contentType: contentType),
                options: options,
                onProgress: onProgress,
              )
              .result)
          .uploadedItem
          .key;
}

enum StorageKeys {
  selfie,
  mosques,
}
