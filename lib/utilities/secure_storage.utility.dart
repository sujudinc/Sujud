// 📦 Package imports:
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class SecureStorageUtility implements SecureStorageUtilityAbstract {
  final FlutterSecureStorage _secureStorage;

  SecureStorageUtility({FlutterSecureStorage? secureStorage})
      : _secureStorage = secureStorage ?? const FlutterSecureStorage();

  @override
  Future<void> write(String key, String value) async =>
      _secureStorage.write(key: key, value: value);

  @override
  Future<String?> read(String key) async => _secureStorage.read(key: key);

  @override
  Future<Map<String, String>> readAll() => _secureStorage.readAll();

  @override
  Future<void> delete(String key) async => _secureStorage.delete(key: key);

  @override
  Future<void> deleteAll() => _secureStorage.deleteAll();

  @override
  Future<bool> contains(String key) => _secureStorage.containsKey(key: key);
}
