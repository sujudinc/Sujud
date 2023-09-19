// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/models/attributed_file.model.dart';

class AmplifyStorageService implements AmplifyStorageServiceAbstract {
  AmplifyStorageService({StorageCategory? s3}) : _s3 = s3 ?? Amplify.Storage;

  final StorageCategory _s3;

  @override
  Future<String> delete({
    required String key,
    StorageRemoveOptions? options,
  }) async {
    final response = await _s3.remove(key: key, options: options).result;

    return response.removedItem.key;
  }

  @override
  Future<String> download({
    required String path,
    required String filename,
    StorageDownloadDataOptions? options,
    void Function(StorageTransferProgress)? onProgress,
  }) async {
    final response = await _s3
        .downloadData(
          key: path,
          options: options,
          onProgress: onProgress,
        )
        .result;

    return response.downloadedItem.key;
  }

  @override
  Future<Uri> getUri({required String key}) async {
    final response = await _s3.getUrl(key: key).result;

    return response.url;
  }

  @override
  Future<String> upload({
    required String path,
    required String filename,
    required AttributedFile file,
    StorageUploadDataOptions? options,
    void Function(StorageTransferProgress)? onProgress,
  }) async {
    final response = await _s3
        .uploadData(
          key: path,
          data: S3DataPayload.bytes(file.file, contentType: file.contentType),
          options: options,
          onProgress: onProgress,
        )
        .result;

    return response.uploadedItem.key;
  }
}
