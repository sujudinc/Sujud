// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.config.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $loadingRoute,
      $errorRoute,
      $onboardingRoute,
      $registerRoute,
      $loginRoute,
      $adminHomeRoute,
    ];

RouteBase get $loadingRoute => GoRouteData.$route(
      path: '/loading',
      name: 'loading',
      factory: $LoadingRouteExtension._fromState,
    );

extension $LoadingRouteExtension on LoadingRoute {
  static LoadingRoute _fromState(GoRouterState state) => const LoadingRoute();

  String get location => GoRouteData.$location(
        '/loading',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorRoute => GoRouteData.$route(
      path: '/error',
      name: 'error',
      factory: $ErrorRouteExtension._fromState,
    );

extension $ErrorRouteExtension on ErrorRoute {
  static ErrorRoute _fromState(GoRouterState state) => const ErrorRoute();

  String get location => GoRouteData.$location(
        '/error',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $onboardingRoute => GoRouteData.$route(
      path: '/onboarding',
      name: 'onboarding',
      factory: $OnboardingRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'mosques',
          name: 'mosques',
          factory: $MosquesRouteExtension._fromState,
        ),
      ],
    );

extension $OnboardingRouteExtension on OnboardingRoute {
  static OnboardingRoute _fromState(GoRouterState state) =>
      const OnboardingRoute();

  String get location => GoRouteData.$location(
        '/onboarding',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MosquesRouteExtension on MosquesRoute {
  static MosquesRoute _fromState(GoRouterState state) => const MosquesRoute();

  String get location => GoRouteData.$location(
        '/onboarding/mosques',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerRoute => GoRouteData.$route(
      path: '/register',
      name: 'register',
      factory: $RegisterRouteExtension._fromState,
    );

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => RegisterRoute(
        redirectTo: state.uri.queryParameters['redirect-to'],
      );

  String get location => GoRouteData.$location(
        '/register',
        queryParams: {
          if (redirectTo != null) 'redirect-to': redirectTo,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      name: 'login',
      factory: $LoginRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'confirm',
          name: 'confirm',
          factory: $ConfirmRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'mfa',
          name: 'mfa',
          factory: $MfaRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'forgot',
          name: 'forgot',
          factory: $ForgotRouteExtension._fromState,
        ),
      ],
    );

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute(
        redirectTo: state.uri.queryParameters['redirect-to'],
      );

  String get location => GoRouteData.$location(
        '/login',
        queryParams: {
          if (redirectTo != null) 'redirect-to': redirectTo,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ConfirmRouteExtension on ConfirmRoute {
  static ConfirmRoute _fromState(GoRouterState state) => ConfirmRoute(
        email: state.uri.queryParameters['email'],
      );

  String get location => GoRouteData.$location(
        '/login/confirm',
        queryParams: {
          if (email != null) 'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MfaRouteExtension on MfaRoute {
  static MfaRoute _fromState(GoRouterState state) => MfaRoute(
        email: state.uri.queryParameters['email'],
      );

  String get location => GoRouteData.$location(
        '/login/mfa',
        queryParams: {
          if (email != null) 'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ForgotRouteExtension on ForgotRoute {
  static ForgotRoute _fromState(GoRouterState state) => ForgotRoute(
        email: state.uri.queryParameters['email'],
      );

  String get location => GoRouteData.$location(
        '/login/forgot',
        queryParams: {
          if (email != null) 'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $adminHomeRoute => StatefulShellRouteData.$route(
      factory: $AdminHomeRouteExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            StatefulShellRouteData.$route(
              factory: $AdminDashboardRouteExtension._fromState,
              branches: [
                StatefulShellBranchData.$branch(
                  routes: [
                    GoRouteData.$route(
                      path: '/admin/dashboard/prayer-times',
                      name: 'admin_prayer_times',
                      factory: $AdminPrayerTimesRouteExtension._fromState,
                      routes: [
                        GoRouteData.$route(
                          path: 'create-mosque',
                          name: 'create_mosque',
                          parentNavigatorKey:
                              CreateMosqueRoute.$parentNavigatorKey,
                          factory: $CreateMosqueRouteExtension._fromState,
                          routes: [
                            GoRouteData.$route(
                              path: 'field',
                              name: 'create_mosque_field',
                              factory:
                                  $CreateMosqueFieldRouteExtension._fromState,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                StatefulShellBranchData.$branch(
                  routes: [
                    GoRouteData.$route(
                      path: '/admin/dashboard/announcements',
                      name: 'admin_announcements',
                      factory: $AdminAnnouncementsRouteExtension._fromState,
                      routes: [
                        GoRouteData.$route(
                          path: 'create-announcement',
                          name: 'create_announcement',
                          parentNavigatorKey:
                              CreateAnnouncementRoute.$parentNavigatorKey,
                          factory: $CreateAnnouncementRouteExtension._fromState,
                        ),
                        GoRouteData.$route(
                          path: ':id',
                          name: 'announcement',
                          parentNavigatorKey:
                              AnnouncementRoute.$parentNavigatorKey,
                          factory: $AnnouncementRouteExtension._fromState,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/admin/settings',
              name: 'admin_settings',
              factory: $AdminSettingsRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AdminHomeRouteExtension on AdminHomeRoute {
  static AdminHomeRoute _fromState(GoRouterState state) =>
      const AdminHomeRoute();
}

extension $AdminDashboardRouteExtension on AdminDashboardRoute {
  static AdminDashboardRoute _fromState(GoRouterState state) =>
      const AdminDashboardRoute();
}

extension $AdminPrayerTimesRouteExtension on AdminPrayerTimesRoute {
  static AdminPrayerTimesRoute _fromState(GoRouterState state) =>
      const AdminPrayerTimesRoute();

  String get location => GoRouteData.$location(
        '/admin/dashboard/prayer-times',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreateMosqueRouteExtension on CreateMosqueRoute {
  static CreateMosqueRoute _fromState(GoRouterState state) =>
      const CreateMosqueRoute();

  String get location => GoRouteData.$location(
        '/admin/dashboard/prayer-times/create-mosque',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreateMosqueFieldRouteExtension on CreateMosqueFieldRoute {
  static CreateMosqueFieldRoute _fromState(GoRouterState state) =>
      CreateMosqueFieldRoute(
        fieldName: state.uri.queryParameters['field-name']!,
        initialValue: state.uri.queryParameters['initial-value'],
      );

  String get location => GoRouteData.$location(
        '/admin/dashboard/prayer-times/create-mosque/field',
        queryParams: {
          'field-name': fieldName,
          if (initialValue != null) 'initial-value': initialValue,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AdminAnnouncementsRouteExtension on AdminAnnouncementsRoute {
  static AdminAnnouncementsRoute _fromState(GoRouterState state) =>
      const AdminAnnouncementsRoute();

  String get location => GoRouteData.$location(
        '/admin/dashboard/announcements',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CreateAnnouncementRouteExtension on CreateAnnouncementRoute {
  static CreateAnnouncementRoute _fromState(GoRouterState state) =>
      const CreateAnnouncementRoute();

  String get location => GoRouteData.$location(
        '/admin/dashboard/announcements/create-announcement',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AnnouncementRouteExtension on AnnouncementRoute {
  static AnnouncementRoute _fromState(GoRouterState state) => AnnouncementRoute(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/admin/dashboard/announcements/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AdminSettingsRouteExtension on AdminSettingsRoute {
  static AdminSettingsRoute _fromState(GoRouterState state) =>
      const AdminSettingsRoute();

  String get location => GoRouteData.$location(
        '/admin/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
