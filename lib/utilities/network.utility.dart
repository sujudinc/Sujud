// 🎯 Dart imports:
import 'dart:async';

// 📦 Package imports:
import 'package:connectivity_plus/connectivity_plus.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class NetworkUtility implements NetworkUtilityAbstract {
  NetworkUtility({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity();

  final Connectivity _connectivity;

  @override
  StreamSubscription<ConnectivityResult> onConnectivityChanged({
    required Function() onDisconnected,
    required Function() onConnected,
  }) =>
      _connectivity.onConnectivityChanged.listen((event) {
        switch (event) {
          case ConnectivityResult.none:
            onDisconnected();
            break;
          case ConnectivityResult.mobile:
          case ConnectivityResult.wifi:
          case ConnectivityResult.bluetooth:
          case ConnectivityResult.ethernet:
          case ConnectivityResult.vpn:
          case ConnectivityResult.other:
            onConnected();
            break;
        }
      });
}
