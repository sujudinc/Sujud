// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';

// 🌎 Project imports:
part 'navigation_path.model.freezed.dart';

@freezed
class NavigationPath with _$NavigationPath {
  NavigationPath._();

  static final _logger = GetIt.instance.get<LoggerUtilityAbstract>();
  static final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  static const routeIndex = 0;
  static const subRouteIndex = 1;
  static const moduleIndex = 2;
  static const sectionIndex = 3;
  static const tabArgName = 'tab';

  factory NavigationPath({
    required NavigationRouteAbstract route,
    String? subRoute,
    String? module,
    String? section,
    Map<String, String>? queryParameters,
    String? fragment,
  }) = _NavigationPath;

  factory NavigationPath.fromPath({required String path}) {
    final navigationRoutes = _navigation.navigationRoutes;
    final parsedUrl = Uri.parse(path);
    final pathSegments = parsedUrl.pathSegments;
    final pathSegmentsLength = pathSegments.length;
    final routeName = pathSegments[routeIndex];
    final queryParameters = Map<String, String>.from(parsedUrl.queryParameters);

    _logger.log(
      '\n| ------------ NavigationPath.fromPath ----------- |'
      '\n| Parsed URL: $parsedUrl'
      '\n| PathSegments: $pathSegments'
      '\n| PathSegmentsLength: $pathSegmentsLength'
      '\n| RouteName: $routeName'
      '\n| QueryParameters: $queryParameters'
      '\n|__________________________________________________|',
    );

    if (pathSegments.isEmpty ||
        routeName == navigationRoutes.home.jamaah.prayerTimes.name) {
      return NavigationPath(
        route: navigationRoutes.home.jamaah.prayerTimes,
        queryParameters: queryParameters,
      );
    }

    if (pathSegments.isEmpty || routeName == navigationRoutes.loading.name) {
      return NavigationPath(
        route: navigationRoutes.loading,
        queryParameters: queryParameters,
      );
    }

    if (routeName == navigationRoutes.login.name) {
      if (pathSegments.contains(
        navigationRoutes.login.confirm.name,
      )) {
        return NavigationPath(
          route: navigationRoutes.login.confirm,
          queryParameters: queryParameters,
        );
      }

      return NavigationPath(
        route: navigationRoutes.login,
        queryParameters: queryParameters,
      );
    }

    if (routeName == navigationRoutes.register.name) {
      return NavigationPath(
        route: navigationRoutes.register,
        queryParameters: queryParameters,
      );
    }

    final route = routeName ==
            navigationRoutes.home.admin.dashboard.subTabs.prayerTimes.name
        ? navigationRoutes.home.admin.dashboard.subTabs.prayerTimes
        : navigationRoutes.home.jamaah.prayerTimes;

    if (pathSegmentsLength > subRouteIndex) {
      final subRoute = pathSegments[subRouteIndex];

      return NavigationPath(
        route: route,
        subRoute: subRoute,
        queryParameters: queryParameters,
      );
    }

    return NavigationPath(
      route: route,
      queryParameters: queryParameters,
    );
  }

  Map<String, String> get pathParameters => <String, String>{
        if (subRoute != null) RouteParam.subRoute.name: subRoute!.kebabCase,
        if (section != null) RouteParam.section.name: section!.kebabCase,
        if (module != null) RouteParam.module.name: module!.kebabCase,
        if (fragment != null) RouteParam.fragment.name: fragment!.kebabCase,
      };
}

enum RouteParam {
  subRoute,
  section,
  module,
  fragment,
}
