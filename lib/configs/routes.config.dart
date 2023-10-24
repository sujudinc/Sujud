import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sheet/route.dart';
import 'package:sujud/pages/pages.dart';

part 'routes.config.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
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
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const LoadingPage(),
      );
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
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const ErrorPage(),
      );
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
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const OnboardingPage(),
      );
}

@immutable
class MosquesRoute extends GoRouteData {
  const MosquesRoute();

  @override
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        key: state.pageKey,
        child: const MosquesPage(),
      );
}

// ---------------- Register Routes ---------------- //
@TypedGoRoute<RegisterRoute>(
  path: '/register',
  name: 'register',
)
@immutable
class RegisterRoute extends GoRouteData {
  const RegisterRoute({this.email, this.redirectTo});

  final String? email;
  final String? redirectTo;

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: RegisterPage(
          email: email,
          redirectTo: redirectTo,
        ),
      );
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
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: LoginPage(redirectTo: redirectTo),
      );
}

@immutable
class ConfirmRoute extends GoRouteData {
  const ConfirmRoute({this.email});

  final String? email;

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: ConfirmAccountPage(email: email),
      );
}

@immutable
class MfaRoute extends GoRouteData {
  const MfaRoute({this.email});

  final String? email;

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: MFAPage(email: email),
      );
}

@immutable
class ForgotRoute extends GoRouteData {
  const ForgotRoute({this.email});

  final String? email;

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: ForgotPasswordPage(email: email),
      );
}

// ---------------- Admin Home Routes ---------------- //
@TypedStatefulShellRoute<AdminHomeRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<AdminDashboardBranchData>(
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
                      path: ':id',
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
    TypedStatefulShellBranch<AdminSettingsBranchData>(
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

  static final $navigatorKey = _adminDashboardNavigatorKey;

  @override
  Page<void> pageBuilder(context, state, navigationShell) =>
      MaterialExtendedPage<void>(
        key: state.pageKey,
        child: HomePage(shell: navigationShell, isAdmin: true),
      );
}

class AdminDashboardRoute extends StatefulShellRouteData {
  const AdminDashboardRoute();

  @override
  Page<void> pageBuilder(context, state, navigationShell) =>
      MaterialExtendedPage<void>(
        key: state.pageKey,
        child: DashboardTab(shell: navigationShell),
      );
}

class AdminDashboardBranchData extends StatefulShellBranchData {
  const AdminDashboardBranchData();
}

class AdminPrayerTimesSubBranchData extends StatefulShellBranchData {
  const AdminPrayerTimesSubBranchData();
}

class AdminAnnouncementsSubBranchData extends StatefulShellBranchData {
  const AdminAnnouncementsSubBranchData();
}

class AdminSettingsBranchData extends StatefulShellBranchData {
  const AdminSettingsBranchData();
}

@immutable
class AdminPrayerTimesRoute extends GoRouteData {
  const AdminPrayerTimesRoute();

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const AdminPrayerTimesSubtab(),
      );
}

@immutable
class AdminAnnouncementsRoute extends GoRouteData {
  const AdminAnnouncementsRoute();

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const AdminAnnouncementsSubtab(),
      );
}

@immutable
class CreateMosqueRoute extends GoRouteData {
  const CreateMosqueRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        key: state.pageKey,
        child: const CreateMosquePage(),
      );
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
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        key: state.pageKey,
        child: CreateMosqueFieldPage(
          fieldName: fieldName,
          initialValue: initialValue,
        ),
      );
}

@immutable
class CreateAnnouncementRoute extends GoRouteData {
  const CreateAnnouncementRoute();

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        key: state.pageKey,
        child: const CreateAnnouncementPage(),
      );
}

@immutable
class AnnouncementRoute extends GoRouteData {
  const AnnouncementRoute({required this.id});

  final String id;

  static final $parentNavigatorKey = rootNavigatorKey;

  @override
  Page buildPage(context, state) => CupertinoSheetPage<void>(
        key: state.pageKey,
        child: AnnouncementPage(id: id),
      );
}

@immutable
class AdminSettingsRoute extends GoRouteData {
  const AdminSettingsRoute();

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const SettingsTab(),
      );
}

@TypedStatefulShellRoute<JamaahHomeRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<JamaahPrayerTimesBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<JamaahPrayerTimesRoute>(
          path: '/jamaah/prayer-times',
          name: 'jamaah_prayer_times',
        ),
      ],
    ),
    TypedStatefulShellBranch<JamaahSettingsBranchData>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<JamaahSettingsRoute>(
          path: '/jamaah/settings',
          name: 'jamaah_settings',
        ),
      ],
    ),
  ],
)
class JamaahHomeRoute extends StatefulShellRouteData {
  const JamaahHomeRoute();

  static final $navigatorKey = _jamaahDashboardNavigatorKey;

  @override
  Page<void> pageBuilder(context, state, navigationShell) =>
      MaterialExtendedPage<void>(
        key: state.pageKey,
        child: HomePage(shell: navigationShell, isAdmin: false),
      );
}

class JamaahPrayerTimesBranchData extends StatefulShellBranchData {
  const JamaahPrayerTimesBranchData();
}

@immutable
class JamaahPrayerTimesRoute extends GoRouteData {
  const JamaahPrayerTimesRoute();

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: Container(
          color: Colors.blueAccent,
        ),
      );
}

class JamaahSettingsBranchData extends StatefulShellBranchData {
  const JamaahSettingsBranchData();
}

@immutable
class JamaahSettingsRoute extends GoRouteData {
  const JamaahSettingsRoute();

  @override
  Page buildPage(context, state) => MaterialExtendedPage<void>(
        key: state.pageKey,
        child: const SettingsTab(),
      );
}
