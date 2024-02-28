// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/notifiers/notifiers.dart';

class NavigationUtility implements NavigationUtilityAbstract {
  NavigationUtility() : _userRepo = GetIt.instance.get<UserRepoAbstract>() {
    GoRouter.optionURLReflectsImperativeAPIs = true;
    _goRouter = GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: $appRoutes,
      errorBuilder: (context, state) => const ErrorRoute().build(
        context,
        state,
      ),
      redirect: (context, routerState) {
        final isInitialised = _userRepo.isLoggedIn != null;
        final isLoggedIn = _userRepo.isLoggedIn ?? false;
        final location = routerState.uri.toString();
        final isGoingToLoading = location.startsWith(
          const LoadingRoute().location,
        );
        final isGoingToOnboarding = location.startsWith(
          const OnboardingRoute().location,
        );
        final isGoingToRegister = location.startsWith(
          const RegisterRoute().location,
        );
        final isGoingToLogin = location.startsWith(
          const LoginRoute().location,
        );
        String? redirectLocation;

        _navigationPathNotifier.navigationPath = NavigationPath.fromPath(
          path: location,
        );

        if (!isInitialised && !isGoingToLoading) {
          return routerState.namedLocation(
            'loading',
            queryParameters: _getRedirectParam(location),
          );
        } else if (!isLoggedIn) {
          if (isGoingToLogin || isGoingToRegister || isGoingToOnboarding) {
            redirectLocation = null;
          } else {
            redirectLocation = const OnboardingRoute().location;
          }
        } else if (isInitialised &&
            !isLoggedIn &&
            (!isGoingToLogin || !isGoingToRegister)) {
          redirectLocation = routerState.namedLocation(
            'login',
            queryParameters: _getRedirectParam(location),
          );
        } else if (isGoingToLoading ||
            isGoingToOnboarding ||
            isGoingToLogin ||
            isGoingToRegister) {
          late String defaultHomePage;

          switch (_userRepo.currentUser!.type) {
            case UserType.ADMIN:
              defaultHomePage = routerState.namedLocation(
                'admin_prayer_times',
                queryParameters: routerState.uri.queryParameters,
              );
              break;
            default:
              defaultHomePage = routerState.namedLocation(
                'jamaah_prayer_times',
                queryParameters: routerState.uri.queryParameters,
              );
              break;
          }

          final redirect = routerState.uri.queryParameters['redirect'];
          redirectLocation = redirect ?? defaultHomePage;
        }

        return redirectLocation;
      },
      refreshListenable: RefreshStream(_userRepo.currentUserStream),
      initialLocation: const OnboardingRoute().location,
      debugLogDiagnostics: true,
    );
  }

  final UserRepoAbstract _userRepo;
  late final GoRouter _goRouter;
  final _navigationPathNotifier = NavigationPathNotifier();

  @override
  NavigationRoutes get navigationRoutes => NavigationRoutes();

  @override
  NavigationPath get currentPath => _navigationPathNotifier.navigationPath;

  @override
  Stream<NavigationPath> get navigationPathStream {
    final stream = _navigationPathNotifier.navigationPathStream;

    return stream;
  }

  @override
  RouterConfig<Object> get routerConfig => _goRouter;

  @override
  RouterDelegate<Object> get routerDelegate => _goRouter.routerDelegate;

  @override
  RouteInformationParser<Object> get routeInformationParser {
    final parser = _goRouter.routeInformationParser;

    return parser;
  }

  @override
  RouteInformationProvider? get routeInformationProvider {
    final provider = _goRouter.routeInformationProvider;

    return provider;
  }

  @override
  void back({Object? data}) => _goRouter.pop(data);

  @override
  void go({required NavigationPath path}) {
    _goRouter.goNamed(
      path.route.name,
      pathParameters: path.pathParameters,
      queryParameters: path.queryParameters ?? const {},
    );
  }

  @override
  void goRoute({
    required NavigationRouteAbstract route,
    Map<String, String>? queryParameters,
  }) {
    _goRouter.go(
      route.location,
      extra: queryParameters,
    );
  }

  @override
  Future<Object?> push({required NavigationPath path}) {
    final data = _goRouter.pushNamed(
      path.route.name,
      pathParameters: path.pathParameters,
      queryParameters: path.queryParameters ?? const {},
    );

    return data;
  }

  @override
  Future<Object?> pushRoute({
    required NavigationRouteAbstract route,
    Map<String, String>? queryParameters,
  }) {
    final data = _goRouter.push(
      route.location,
      extra: queryParameters,
    );

    return data;
  }

  @override
  set subRoute(String subRoute) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      subRoute: subRoute,
    );

    goRoute(
      route: updatedPath.route,
      queryParameters: updatedPath.queryParameters,
    );
  }

  @override
  set module(String module) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      module: module,
    );

    goRoute(
      route: updatedPath.route,
      queryParameters: updatedPath.queryParameters,
    );
  }

  @override
  set fragment(String fragment) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      fragment: fragment,
    );

    goRoute(
      route: updatedPath.route,
      queryParameters: updatedPath.queryParameters,
    );
  }

  @override
  set section(String section) {
    final updatedPath = _navigationPathNotifier.navigationPath.copyWith(
      section: section,
    );

    goRoute(
      route: updatedPath.route,
      queryParameters: updatedPath.queryParameters,
    );
  }

  @override
  void setQueryParameters(
    Map<String, String> queryParameters, {
    bool retain = false,
  }) {
    final currentPath = _navigationPathNotifier.navigationPath;
    final updatedPath = currentPath.copyWith(
      queryParameters: retain
          ? {...currentPath.queryParameters ?? {}, ...queryParameters}
          : queryParameters,
    );

    go(path: updatedPath);
  }

  Map<String, String> _getRedirectParam(String targetLocation) {
    final target = Uri.parse(targetLocation);

    if (target.queryParameters.containsKey('redirect')) {
      return target.queryParameters;
    }

    return <String, String>{
      if (targetLocation.startsWith('/')) 'redirect': targetLocation,
    };
  }
}
