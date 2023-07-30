// 📦 Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';

class SharedPrefsUtility implements SharedPrefsUtilityAbstract {
  final Future<SharedPreferences> _prefs;

  SharedPrefsUtility({Future<SharedPreferences>? prefs})
      : _prefs = prefs ?? SharedPreferences.getInstance();

  @override
  Future<void> initSharedPrefs() async {
    final didSetSharedPrefs = await getBool(key: kDidSetSharedPrefs);

    if (didSetSharedPrefs != null) {
      await setItem(key: kDidSetSharedPrefs, value: true);
      await setItem(key: kAppThemeLight, value: true);
      await setItem(
        type: SharedPrefsType.string,
        key: kDateLastOpened,
        value: DateTime.now().toIso8601String(),
      );
      await setItem(key: kHasReviewed, value: false);
    }
  }

  @override
  Future<bool> setItem({
    required String key,
    required value,
    SharedPrefsType type = SharedPrefsType.bool,
  }) async {
    final prefs = await _prefs;

    switch (type) {
      case SharedPrefsType.bool:
        return prefs.setBool(key, value);
      case SharedPrefsType.double:
        return prefs.setDouble(key, value);
      case SharedPrefsType.int:
        return prefs.setInt(key, value);
      case SharedPrefsType.string:
        return prefs.setString(key, value);
    }
  }

  @override
  Future<bool?> getBool({
    required String key,
  }) async {
    final prefs = await _prefs;

    return prefs.getBool(key);
  }

  @override
  Future<double?> getDouble({
    required String key,
  }) async {
    final prefs = await _prefs;
    return prefs.getDouble(key);
  }

  @override
  Future<int?> getInt({
    required String key,
  }) async {
    final prefs = await _prefs;
    return prefs.getInt(key);
  }

  @override
  Future<String?> getString({
    required String key,
  }) async {
    final prefs = await _prefs;
    return prefs.getString(key);
  }
}
