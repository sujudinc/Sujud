// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:rxdart/rxdart.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';

// 🌎 Project imports:

class NavigationPathNotifier extends ChangeNotifier {
  NavigationPathNotifier() {
    _navigationPathSubject = BehaviorSubject.seeded(_navigationPath);
    notifyListeners();
  }

  late final BehaviorSubject<NavigationPath> _navigationPathSubject;
  var _navigationPath = NavigationPath(route: NavigationRoutes().loading);

  Stream<NavigationPath> get navigationPathStream =>
      _navigationPathSubject.stream;
  NavigationPath get navigationPath => _navigationPath;

  set navigationPath(NavigationPath path) {
    _navigationPath = path;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    _navigationPathSubject.add(_navigationPath);
    super.notifyListeners();
  }

  @override
  Future<void> dispose() async {
    if (!_navigationPathSubject.isClosed) {
      await _navigationPathSubject.close();
    }

    super.dispose();
  }
}
