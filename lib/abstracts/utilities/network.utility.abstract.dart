// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkUtilityAbstract {
  bool get isConnected;
  StreamSubscription<ConnectivityResult> onConnectivityChanged({
    Function()? onDisconnected,
    Function()? onConnected,
  });
}
