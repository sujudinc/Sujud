// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkUtilityAbstract {
  StreamSubscription<ConnectivityResult> onConnectivityChanged({
    required Function() onDisconnected,
    required Function() onConnected,
  });
}
