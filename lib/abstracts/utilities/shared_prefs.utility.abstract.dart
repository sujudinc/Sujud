abstract class SharedPrefsUtilityAbstract {
  Future<void> initSharedPrefs();

  Future<bool> setItem({
    required String key,
    required value,
    SharedPrefsType type = SharedPrefsType.bool,
  });

  Future<bool?> getBool({
    required String key,
  });

  Future<double?> getDouble({
    required String key,
  });

  Future<int?> getInt({
    required String key,
  });

  Future<String?> getString({
    required String key,
  });
}

enum SharedPrefsType {
  bool,
  double,
  int,
  string,
}
