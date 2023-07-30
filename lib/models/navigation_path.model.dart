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
    required NavigationRoute route,
    String? subRoute,
    String? module,
    String? section,
    Map<String, String>? queryParameters,
    String? fragment,
  }) = _NavigationPath;

  factory NavigationPath.fromUrlPath({required String urlPath}) {
    final navigationRoutes = _navigation.navigationRoutes;
    final parsedUrl = Uri.parse(urlPath);
    final pathSegments = parsedUrl.pathSegments;
    final pathSegmentsLength = pathSegments.length;
    final queryParameters = Map<String, String>.from(parsedUrl.queryParameters);

    _logger.log(
      '\n| ------------ FROM URL PATH -----------|'
      '\n| Parsed URL: $parsedUrl'
      '\n| PathSegments: $pathSegments'
      '\n| QueryParameters: $queryParameters'
      '\n|_______________________________________|\n',
    );

    final routeName = pathSegments[routeIndex];

    if (pathSegments.isEmpty ||
        routeName == navigationRoutes.home.jamaah.itself.name) {
      return NavigationPath(
        route: navigationRoutes.home.jamaah.itself,
        queryParameters: queryParameters,
      );
    }

    if (pathSegments.isEmpty || routeName == navigationRoutes.loading.name) {
      return NavigationPath(
        route: navigationRoutes.loading,
        queryParameters: queryParameters,
      );
    }

    if (routeName == navigationRoutes.auth.itself.name) {
      if (pathSegmentsLength > subRouteIndex &&
          pathSegments[subRouteIndex] ==
              navigationRoutes.auth.register.itself.name) {
        return NavigationPath(
          route: navigationRoutes.auth.register.itself,
          queryParameters: queryParameters,
        );
      }

      if (pathSegments.contains(
        navigationRoutes.auth.confirm.name,
      )) {
        return NavigationPath(
          route: navigationRoutes.auth.confirm,
          queryParameters: queryParameters,
        );
      }

      return NavigationPath(
        route: navigationRoutes.auth.itself,
        queryParameters: queryParameters,
      );
    }

    final route = routeName == navigationRoutes.home.admin.itself.name
        ? navigationRoutes.home.admin.dashboard.itself
        : navigationRoutes.home.jamaah.dashboard.itself;

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
