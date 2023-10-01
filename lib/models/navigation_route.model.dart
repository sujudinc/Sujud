// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.model.freezed.dart';

@freezed
class NavigationRoute
    with _$NavigationRoute
    implements NavigationRouteAbstract {
  factory NavigationRoute({
    @override required String name,
    @override required String path,
    @override required String location,
  }) = _NavigationRoute;
}

abstract class NavigationRouteAbstract {
  String get name;
  String get path;
  String get location;
}
