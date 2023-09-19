// 📦 Package imports:
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:sujud/models/attributed_file.model.dart';

abstract class AmplifyStorageServiceAbstract {
  Future<String> delete({
    required String key,
    StorageRemoveOptions? options,
  });

  Future<String> download({
    required String path,
    required String filename,
    void Function(StorageTransferProgress)? onProgress,
    StorageDownloadDataOptions? options,
  });

  Future<Uri> getUri({
    required String key,
  });

  Future<String> upload({
    required String path,
    required String filename,
    required AttributedFile file,
    void Function(StorageTransferProgress)? onProgress,
    StorageUploadDataOptions? options,
  });
}

enum StoragePath {
  user,
  mosque,
  announcement,
}
