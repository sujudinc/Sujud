import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/route.dart';
import 'package:sujud/pages/pages.dart';

part 'routes.config.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _adminDashboardNavigatorKey = GlobalKey<NavigatorState>();
final _jamaahDashboardNavigatorKey = GlobalKey<NavigatorState>();

// ---------------- Loading Route ---------------- //
@TypedGoRoute<LoadingRoute>(
  path: '/loading',
  name: 'loading',
)
@immutable
class LoadingRoute extends GoRouteData {
  const LoadingRoute();

  @override
  Widget build(context, state) => const LoadingPage();
}

// ---------------- Error Route ---------------- //
@TypedGoRoute<ErrorRoute>(
  path: '/error',
  name: 'error',
)
@immutable
class ErrorRoute extends GoRouteData {
  const ErrorRoute();

  @override
  Widget build(context, state) => const ErrorPage();
}

// ---------------- Onboarding Routes ---------------- //
@TypedGoRoute<OnboardingRoute>(
  path: '/onboarding',
  name: 'onboarding',
  routes: <TypedGoRoute>[
    TypedGoRoute<MosquesRoute>(
      path: 'mosques',
      name: 'mosques',
    ),
  ],
)
@immutable
class OnboardingRoute extends GoRouteData {
  const OnboardingRoute();

  @override
  Widget build(context, state) => const OnboardingPage();
}

@immutable
class MosquesRoute extends GoRouteData {
  const MosquesRoute();

  @override
  Widget build(context, state) => const MosquesPage();
}

// ---------------- Register Routes ---------------- //
@TypedGoRoute<RegisterRoute>(
  path: '/register',
  name: 'register',
)
@immutable
class RegisterRoute extends GoRouteData {
  const RegisterRoute({this.redirectTo});

  final String? redirectTo;

  @override
  Widget build(context, state) => RegisterPage(redirectTo: redirectTo);
}

// ---------------- Login Routes ---------------- //
@TypedGoRoute<LoginRoute>(
  path: '/login',
  name: 'login',
  routes: <TypedGoRoute>[
    TypedGoRoute<ConfirmRoute>(path: 'confirm', name: 'confirm'),
    TypedGoRoute<MfaRoute>(path: 'mfa', name: 'mfa'),
    TypedGoRoute<ForgotRoute>(path: 'forgot', name: 'forgot'),
  ],
)
@immutable
class LoginRoute extends GoRouteData {
  const LoginRoute({this.redirectTo});

  final String? redirectTo;

  @override
  Widget build(context, state) => LoginPage(redirectTo: redirectTo);
}

@immutable
class ConfirmRoute extends GoRouteData {
  const ConfirmRoute({this.email});

  final String? email;

  @override
  Widget build(context, state) => ConfirmAccountPage(email: email);
}

@immutable
class MfaRoute extends GoRouteData {
  const MfaRoute({this.email});

  final String? email;

  @override
  Widget build(context, state) => MFAPage(email: email);
}

@immutable
class ForgotRoute extends GoRouteData {
  const ForgotRoute({this.email});

  final String? email;

  @override
  Widget build(context, state) => ForgotPasswordPage(email: email);
}

// ---------------- Admin Home Routes ---------------- //
@TypedStatefulShellRoute<AdminHomeRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<DashboardBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedStatefulShellRoute<AdminDashboardRoute>(
          branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
            TypedStatefulShellBranch<AdminPrayerTimesSubBranchData>(
              routes: <TypedRoute<RouteData>>[
                TypedGoRoute<AdminPrayerTimesRoute>(
                  path: '/admin/dashboard/prayer-times',
                  name: 'admin_prayer_times',
                  routes: <TypedRoute<RouteData>>[
                    TypedGoRoute<CreateMosqueRoute>(
                      path: 'create-mosque',
                      name: 'create_mosque',
                      routes: <TypedRoute<RouteData>>[
                        TypedGoRoute<CreateMosqueFieldRoute>(
                          path: 'field',
                          name: 'create_mosque_field',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            TypedStatefulShellBranch<AdminAnnouncementsSubBranchData>(
              routes: <TypedRoute<RouteData>>[
                TypedGoRoute<AdminAnnouncementsRoute>(
                  path: '/admin/dashboard/announcements',
                  name: 'admin_announcements',
                  routes: <TypedRoute<RouteData>>[
                    TypedGoRoute<CreateAnnouncementRoute>(
                      path: 'create-announcement',
                      name: 'create_announcement',
                    ),
                    TypedGoRoute<AnnouncementRoute>(
                      path: ':section',
                      name: 'announcement',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<SettingsBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<AdminSettingsRoute>(
          path: '/admin/settings',
          name: 'admin_settings',
        ),
      ],
    ),
  ],
)
class AdminHomeRoute extends StatefulShellRouteData {
  const AdminHomeRoute();

  static final $navigatorKey = _rootNavigatorKey;
  static const $restorationScopeId = 'restorationScopeId';

  @override
  Widget builder(context, state, navigationShell) => navigationShell;

  static Widget $navigatorContainerBuilder(
    context,
    shell,
    children,
  ) =>
      HomePage(
        shell: shell,
        children: children,
        isAdmin: true,
      );
}

class AdminDashboardRoute extends StatefulShellRouteData {
  const AdminDashboardRoute();

  @override
  Widget builder(context, state, navigationShell) => navigationShell;

  static Widget $navigatorContainerBuilder(
    context,
    shell,
    children,
  ) =>
      DashboardTab(
        shell: shell,
        children: children,
      );
}

class DashboardBranchData extends StatefulShellBranchData {
  const DashboardBranchData();
}

class AdminPrayerTimesSubBranchData extends StatefulShellBranchData {
  const AdminPrayerTimesSubBranchData();
}

class AdminAnnouncementsSubBranchData extends StatefulShellBranchData {
  const AdminAnnouncementsSubBranchData();
}

class SettingsBranchData extends StatefulShellBranchData {
  const SettingsBranchData();
}

@immutable
class AdminPrayerTimesRoute extends GoRouteData {
  const AdminPrayerTimesRoute();

  @override
  Widget build(context, state) => const AdminPrayerTimesSubtab();
}

@immutable
class AdminAnnouncementsRoute extends GoRouteData {
  const AdminAnnouncementsRoute();

  @override
  Widget build(context, state) => const AdminAnnouncementsSubtab();
}

@immutable
class CreateMosqueRoute extends GoRouteData {
  const CreateMosqueRoute();

  @override
  Widget build(context, state) => const CreateMosquePage();
}

@immutable
class CreateMosqueFieldRoute extends GoRouteData {
  const CreateMosqueFieldRoute({
    required this.fieldName,
    this.initialValue,
  });

  final String fieldName;
  final String? initialValue;

  @override
  Widget build(context, state) => CreateMosqueFieldPage(
        fieldName: fieldName,
        initialValue: initialValue,
      );
}

@immutable
class CreateAnnouncementRoute extends GoRouteData {
  const CreateAnnouncementRoute();

  static final $navigatorKey = _rootNavigatorKey;
  static const $restorationScopeId = 'restorationScopeId';

  @override
  Page buildPage(context, state) => const CupertinoSheetPage<void>(
        child: CreateAnnouncementPage(),
      );
}

@immutable
class AnnouncementRoute extends GoRouteData {
  const AnnouncementRoute({required this.section});

  final String section;

  static final $navigatorKey = _rootNavigatorKey;
  static const $restorationScopeId = 'restorationScopeId';

  @override
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        child: AnnouncementPage(id: section),
      );
}

@immutable
class AdminSettingsRoute extends GoRouteData {
  const AdminSettingsRoute();

  @override
  Widget build(context, state) => const SettingsTab();
}
