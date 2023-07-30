// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_route.model.freezed.dart';

@freezed
class NavigationRoute with _$NavigationRoute {
  factory NavigationRoute({
    required String name,
    required String path,
    required String location,
  }) = _NavigationRoute;
}

enum RouteParam {
  subRoute,
  section,
  module,
  fragment,
}
