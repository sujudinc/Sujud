// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/route.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/notifiers/notifiers.dart';
import 'package:sujud/pages/pages.dart';

class NavigationUtility implements NavigationUtilityAbstract {
  NavigationUtility()
      : _user = GetIt.instance.get<UserRepoAbstract>(),
        _logger = GetIt.instance.get<LoggerUtilityAbstract>() {
    _logger.log('📍 NavigationUtility');

    final homeRoutes = navigationRoutes.home;
    final adminRoutes = homeRoutes.admin;
    final jamaahRoutes = homeRoutes.jamaah;
    final onboardingRoutes = navigationRoutes.onboarding;
    final authRoutes = navigationRoutes.auth;

    _goRouter = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: navigationRoutes.root.path,
          name: navigationRoutes.root.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: Container(
              color: Colors.greenAccent,
            ),
          ),
          routes: <GoRoute>[
            GoRoute(
              path: homeRoutes.admin.itself.path,
              name: homeRoutes.admin.itself.name,
              pageBuilder: (context, state) => MaterialExtendedPage<void>(
                key: state.pageKey,
                child: AdminHomePage(
                  key: state.pageKey,
                ),
              ),
              routes: <GoRoute>[
                GoRoute(
                  path: adminRoutes.dashboard.createMosque.itself.path,
                  name: adminRoutes.dashboard.createMosque.itself.name,
                  pageBuilder: (context, state) => CupertinoSheetPage<void>(
                    key: state.pageKey,
                    child: CreateMosquePage(
                      key: state.pageKey,
                    ),
                  ),
                  routes: <GoRoute>[
                    GoRoute(
                      path: adminRoutes.dashboard.createMosque.field.path,
                      name: adminRoutes.dashboard.createMosque.field.name,
                      pageBuilder: (context, state) => CupertinoSheetPage<void>(
                        key: state.pageKey,
                        child: CreateMosqueFieldPage(
                          key: state.pageKey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            GoRoute(
              path: jamaahRoutes.itself.path,
              name: jamaahRoutes.itself.name,
              pageBuilder: (context, state) => MaterialExtendedPage<void>(
                key: state.pageKey,
                child: JamaahHomePage(
                  key: state.pageKey,
                ),
              ),
            ),
          ],
        ),
        GoRoute(
          path: onboardingRoutes.itself.path,
          name: onboardingRoutes.itself.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: OnboardingPage(
              key: state.pageKey,
            ),
          ),
          routes: <GoRoute>[
            GoRoute(
              path: onboardingRoutes.mosques.path,
              name: onboardingRoutes.mosques.name,
              pageBuilder: (context, state) => MaterialExtendedPage<void>(
                key: state.pageKey,
                child: MosqueSelectionPage(
                  key: state.pageKey,
                ),
              ),
            ),
          ],
        ),
        GoRoute(
          path: navigationRoutes.auth.itself.path,
          name: navigationRoutes.auth.itself.name,
          builder: (context, state) => LoginPage(
            key: state.pageKey,
          ),
          routes: <GoRoute>[
            GoRoute(
              path: authRoutes.mfa.path,
              name: navigationRoutes.auth.mfa.name,
              builder: (context, state) => MFAPage(
                key: state.pageKey,
              ),
            ),
            GoRoute(
              path: authRoutes.forgot.path,
              name: authRoutes.forgot.name,
              builder: (context, state) => ForgotPasswordPage(
                key: state.pageKey,
              ),
            ),
            GoRoute(
              path: authRoutes.register.itself.path,
              name: authRoutes.register.itself.name,
              pageBuilder: (context, state) => MaterialExtendedPage<void>(
                child: RegisterPage(
                  key: state.pageKey,
                ),
              ),
            ),
            GoRoute(
              path: authRoutes.confirm.path,
              name: authRoutes.confirm.name,
              builder: (context, state) => ConfirmAccountPage(
                key: state.pageKey,
              ),
            ),
          ],
        ),
        GoRoute(
          path: navigationRoutes.loading.path,
          name: navigationRoutes.loading.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ErrorPage(
          key: state.pageKey,
        ),
      ),
      redirect: (context, routerState) {
        final isInitialised = _user.isLoggedIn != null;
        final isLoggedIn = _user.isLoggedIn ?? false;
        final isGoingToRoot =
            routerState.location == navigationRoutes.root.path;
        final isGoingToLoading = routerState.location.startsWith(
          navigationRoutes.loading.path,
        );
        final isGoingToAuth = routerState.location.startsWith(
          navigationRoutes.auth.itself.path,
        );
        final isGoingToOnboarding = routerState.location.startsWith(
          navigationRoutes.onboarding.itself.location,
        );

        _navigationPathNotifier.navigationPath = NavigationPath.fromUrlPath(
          urlPath: routerState.location,
        );

        if (!isInitialised && !isGoingToLoading) {
          return routerState.namedLocation(
            'loading',
            queryParameters: _getRedirectParam(routerState.location),
          );
        }

        String? redirectLocation;

        if (!isLoggedIn) {
          if (isGoingToRoot || isGoingToAuth || isGoingToOnboarding) {
            redirectLocation = null;
          } else {
            redirectLocation = navigationRoutes.onboarding.itself.location;
          }
        } else if (isInitialised && !isLoggedIn && !isGoingToAuth) {
          redirectLocation = routerState.namedLocation(
            'auth',
            queryParameters: _getRedirectParam(routerState.location),
          );
        } else if (isGoingToRoot ||
            isGoingToLoading ||
            isGoingToAuth ||
            isGoingToOnboarding) {
          final userType = _user.currentUser?.type ?? UserType.USER;
          final defaultHomePage = userType == UserType.ADMIN
              ? routerState.namedLocation(
                  'admin',
                  pathParameters: <String, String>{
                    RouteParam.subRoute.name: 'dashboard',
                  },
                  queryParameters: routerState.queryParameters,
                )
              : routerState.namedLocation(
                  'jamaah',
                  pathParameters: <String, String>{
                    RouteParam.subRoute.name: 'dashboard',
                  },
                  queryParameters: routerState.queryParameters,
                );

          final redirect = routerState.queryParameters['redirect'];
          redirectLocation = redirect ?? defaultHomePage;
        }

        _logger.log('--> Redirecting to Home');
        return redirectLocation;
      },
      refreshListenable: RefreshStream(_user.currentUserStream),
      initialLocation: navigationRoutes.onboarding.itself.location,
      debugLogDiagnostics: true,
    );
  }

  final UserRepoAbstract _user;
  final LoggerUtilityAbstract _logger;
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
    required NavigationRoute route,
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
    required NavigationRoute route,
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

    return targetLocation == '/'
        ? <String, String>{}
        : <String, String>{'redirect': targetLocation};
  }
}
