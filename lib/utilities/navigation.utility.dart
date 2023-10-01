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
  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _adminDashboardNavigatorKey = GlobalKey<NavigatorState>();
  final _jamaahDashboardNavigatorKey = GlobalKey<NavigatorState>();

  NavigationUtility() : _userRepo = GetIt.instance.get<UserRepoAbstract>() {
    final loadingRoute = navigationRoutes.loading;
    final onboardingRoute = navigationRoutes.onboarding;
    final registerRoute = navigationRoutes.register;
    final loginRoute = navigationRoutes.login;
    final homeRoute = navigationRoutes.home;
    final adminDashboardRoute = homeRoute.admin.dashboard;
    final adminSettingsRoute = homeRoute.admin.settings;
    final jamaahRoute = homeRoute.jamaah;

    GoRouter.optionURLReflectsImperativeAPIs = true;
    _goRouter = GoRouter(
      navigatorKey: _rootNavigatorKey,
      routes: <RouteBase>[
        // Loading Page
        GoRoute(
          path: loadingRoute.path,
          name: loadingRoute.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: const LoadingPage(),
          ),
        ),
        // Onboarding Page
        GoRoute(
          path: onboardingRoute.path,
          name: onboardingRoute.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: const OnboardingPage(),
          ),
          routes: <GoRoute>[
            GoRoute(
              path: onboardingRoute.mosques.path,
              name: onboardingRoute.mosques.name,
              pageBuilder: (context, state) => MaterialExtendedPage<void>(
                key: state.pageKey,
                child: const MosquesPage(),
              ),
            ),
          ],
        ),
        // Auth Pages
        GoRoute(
          path: registerRoute.path,
          name: registerRoute.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            child: RegisterPage(
              key: state.pageKey,
            ),
          ),
        ),
        GoRoute(
          path: loginRoute.path,
          name: loginRoute.name,
          pageBuilder: (context, state) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: const LoginPage(),
          ),
          routes: <GoRoute>[
            GoRoute(
              name: loginRoute.forgot.name,
              path: loginRoute.forgot.path,
              pageBuilder: (context, state) => CupertinoExtendedPage<void>(
                key: state.pageKey,
                child: const ForgotPasswordPage(),
              ),
            ),
            GoRoute(
              name: loginRoute.confirm.name,
              path: loginRoute.confirm.path,
              pageBuilder: (context, state) => CupertinoExtendedPage<void>(
                key: state.pageKey,
                child: const ConfirmAccountPage(),
              ),
            ),
            GoRoute(
              name: loginRoute.mfa.name,
              path: loginRoute.mfa.path,
              pageBuilder: (context, state) => CupertinoExtendedPage<void>(
                key: state.pageKey,
                child: const MFAPage(),
              ),
            ),
          ],
        ),
        // Home Page
        StatefulShellRoute.indexedStack(
          pageBuilder: (context, state, shell) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: HomePage(
              shell: shell,
              isAdmin: true,
            ),
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: _adminDashboardNavigatorKey,
              routes: <RouteBase>[
                StatefulShellRoute.indexedStack(
                  pageBuilder: (context, state, shell) =>
                      MaterialExtendedPage<void>(
                    key: state.pageKey,
                    child: DashboardTab(
                      shell: shell,
                    ),
                  ),
                  branches: <StatefulShellBranch>[
                    StatefulShellBranch(
                      routes: <RouteBase>[
                        GoRoute(
                          path: adminDashboardRoute.subTabs.prayerTimes.path,
                          name: adminDashboardRoute.subTabs.prayerTimes.name,
                          pageBuilder: (context, state) =>
                              MaterialExtendedPage<void>(
                            key: state.pageKey,
                            child: const PrayerTimesSubtab(),
                          ),
                          routes: <GoRoute>[
                            GoRoute(
                              name: adminDashboardRoute.createMosque.name,
                              path: adminDashboardRoute.createMosque.path,
                              parentNavigatorKey: _rootNavigatorKey,
                              pageBuilder: (context, state) =>
                                  CupertinoSheetPage<void>(
                                key: state.pageKey,
                                child: const CreateMosquePage(),
                              ),
                              routes: <GoRoute>[
                                GoRoute(
                                  name: adminDashboardRoute
                                      .createMosque.field.name,
                                  path: adminDashboardRoute
                                      .createMosque.field.path,
                                  pageBuilder: (context, state) =>
                                      CupertinoSheetPage<void>(
                                    key: state.pageKey,
                                    child: const CreateMosqueFieldPage(),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    StatefulShellBranch(
                      routes: <RouteBase>[
                        GoRoute(
                          path: adminDashboardRoute.subTabs.announcements.path,
                          name: adminDashboardRoute.subTabs.announcements.name,
                          pageBuilder: (context, state) =>
                              MaterialExtendedPage<void>(
                            key: state.pageKey,
                            child: const AnnouncementsSubtab(),
                          ),
                          routes: <GoRoute>[
                            GoRoute(
                              name: adminDashboardRoute.createAnnouncement.name,
                              path: adminDashboardRoute.createAnnouncement.path,
                              parentNavigatorKey: _rootNavigatorKey,
                              pageBuilder: (context, state) =>
                                  CupertinoSheetPage<void>(
                                key: state.pageKey,
                                child: CreateAnnouncementPage(
                                  key: state.pageKey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: adminSettingsRoute.path,
                  name: adminSettingsRoute.name,
                  pageBuilder: (context, state) => MaterialExtendedPage<void>(
                    key: state.pageKey,
                    child: const SettingsTab(),
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellRoute.indexedStack(
          pageBuilder: (context, state, shell) => MaterialExtendedPage<void>(
            key: state.pageKey,
            child: HomePage(
              shell: shell,
            ),
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: _jamaahDashboardNavigatorKey,
              routes: <RouteBase>[
                GoRoute(
                  path: jamaahRoute.prayerTimes.path,
                  name: jamaahRoute.prayerTimes.name,
                  pageBuilder: (context, state) => MaterialExtendedPage<void>(
                    key: state.pageKey,
                    child: const PrayerTimesTab(),
                  ),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: jamaahRoute.settings.path,
                  name: jamaahRoute.settings.name,
                  pageBuilder: (context, state) => MaterialExtendedPage<void>(
                    key: state.pageKey,
                    child: const SettingsTab(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: ErrorPage(
          key: state.pageKey,
        ),
      ),
      redirect: (context, routerState) {
        final isInitialised = _userRepo.isLoggedIn != null;
        final isLoggedIn = _userRepo.isLoggedIn ?? false;
        final location = routerState.uri.toString();
        final isGoingToLoading = location.startsWith(
          loadingRoute.location,
        );
        final isGoingToOnboarding = location.startsWith(
          onboardingRoute.location,
        );
        final isGoingToRegister = location.startsWith(
          registerRoute.location,
        );
        final isGoingToLogin = location.startsWith(
          loginRoute.location,
        );
        String? redirectLocation;

        _navigationPathNotifier.navigationPath = NavigationPath.fromPath(
          path: location,
        );

        if (!isInitialised && !isGoingToLoading) {
          return routerState.namedLocation(
            loadingRoute.name,
            queryParameters: _getRedirectParam(location),
          );
        } else if (!isLoggedIn) {
          if (isGoingToLogin || isGoingToRegister || isGoingToOnboarding) {
            redirectLocation = null;
          } else {
            redirectLocation = onboardingRoute.path;
          }
        } else if (isInitialised &&
            !isLoggedIn &&
            (!isGoingToLogin || !isGoingToRegister)) {
          redirectLocation = routerState.namedLocation(
            loginRoute.name,
            queryParameters: _getRedirectParam(location),
          );
        } else if (isGoingToLoading ||
            isGoingToOnboarding ||
            isGoingToLogin ||
            isGoingToRegister) {
          late String defaultHomePage;

          switch (_userRepo.currentUser!.type) {
            case UserType.ADMIN:
            case UserType.SUPER_ADMIN:
              defaultHomePage = routerState.namedLocation(
                adminDashboardRoute.subTabs.prayerTimes.name,
                queryParameters: routerState.uri.queryParameters,
              );
              break;
            default:
              defaultHomePage = routerState.namedLocation(
                jamaahRoute.prayerTimes.name,
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
      initialLocation: onboardingRoute.location,
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
