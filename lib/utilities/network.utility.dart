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
  bool _isConnected = true;

  @override
  bool get isConnected => _isConnected;

  @override
  StreamSubscription<ConnectivityResult> onConnectivityChanged({
    Function()? onDisconnected,
    Function()? onConnected,
  }) =>
      _connectivity.onConnectivityChanged.listen((event) {
        switch (event) {
          case ConnectivityResult.none:
            _isConnected = false;
            onDisconnected?.call();
            break;
          case ConnectivityResult.mobile:
          case ConnectivityResult.wifi:
          case ConnectivityResult.bluetooth:
          case ConnectivityResult.ethernet:
          case ConnectivityResult.vpn:
          case ConnectivityResult.other:
            _isConnected = true;
            onConnected?.call();
            break;
        }
      });
}
