// 🌎 Project imports:
import 'package:sujud/models/models.dart';

class NavigationRoutes {
  final loading = NavigationRoute(
    name: 'loading',
    path: '/loading',
    location: '/loading',
  );
  final onboarding = OnboardingRoutes();
  final register = RegisterRoutes();
  final login = LoginRoutes();
  final home = HomeRoutes();
  final error = NavigationRoute(
    name: 'error',
    path: '/404',
    location: '/404',
  );
}

class HomeRoutes {
  final admin = AdminRoutes();
  final jamaah = JamaahRoutes();
}

class OnboardingRoutes implements NavigationRouteAbstract {
  @override
  String get name => 'onboarding';
  @override
  String get path => '/onboarding';
  @override
  String get location => '/onboarding';

  final mosques = NavigationRoute(
    name: 'mosques',
    path: 'mosques',
    location: '/onboarding/mosques',
  );
}

class RegisterRoutes implements NavigationRouteAbstract {
  @override
  final name = 'register';
  @override
  final path = '/register';
  @override
  final location = '/register';
}

class LoginRoutes implements NavigationRouteAbstract {
  @override
  String get name => 'login';
  @override
  String get path => '/login';
  @override
  String get location => '/login';

  final mfa = NavigationRoute(
    name: 'mfa',
    path: 'mfa',
    location: '/login/mfa',
  );
  final forgot = NavigationRoute(
    name: 'forgot',
    path: 'forgot',
    location: '/login/forgot',
  );
  final confirm = NavigationRoute(
    name: 'confirm',
    path: 'confirm',
    location: '/login/confirm',
  );
}

class AdminRoutes {
  final dashboard = DashboardRoutes();
  final settings = AdminSettingsRoutes();
}

class DashboardRoutes {
  final subTabs = DashboardTabsRoutes();

  final createMosque = CreateMosqueRoutes();
  final createAnnouncement = NavigationRoute(
    name: 'create_announcement',
    path: 'create_announcement',
    location: '/admin/dashboard/announcements/create_announcement',
  );
  final announcement = NavigationRoute(
    name: 'announcement',
    path: ':section',
    location: '/admin/dashboard/announcements/:section',
  );
}

class DashboardTabsRoutes {
  final prayerTimes = NavigationRoute(
    name: 'admin_prayer_times',
    path: '/admin/dashboard/prayer_times',
    location: '/admin/dashboard/prayer_times',
  );
  final announcements = NavigationRoute(
    name: 'admin_announcements',
    path: '/admin/dashboard/announcements',
    location: '/admin/dashboard/announcements',
  );
}

class CreateMosqueRoutes implements NavigationRouteAbstract {
  @override
  String get name => 'create_mosque';
  @override
  String get path => 'create_mosque';
  @override
  String get location => '/admin/dashboard/prayer_times/create_mosque';

  final field = NavigationRoute(
    name: 'create_mosque_field',
    path: 'field',
    location: '/admin/dashboard/create_mosque/field',
  );
}

class AdminSettingsRoutes implements NavigationRouteAbstract {
  @override
  String get name => 'admin_settings';
  @override
  String get path => '/admin/settings';
  @override
  String get location => '/admin/settings';

  final profile = NavigationRoute(
    name: 'admin_profile',
    path: 'profile',
    location: '/admin/settings/profile',
  );
  final account = NavigationRoute(
    name: 'admin_account',
    path: 'account',
    location: '/admin/settings/account',
  );
  final notifications = NavigationRoute(
    name: 'admin_notifications',
    path: 'notifications',
    location: '/admin/settings/notifications',
  );
  final privacy = NavigationRoute(
    name: 'admin_privacy',
    path: 'privacy',
    location: '/admin/settings/privacy',
  );
  final help = NavigationRoute(
    name: 'admin_help',
    path: 'help',
    location: '/admin/settings/help',
  );
}

class JamaahRoutes {
  final prayerTimes = NavigationRoute(
    name: 'jamaah_prayer_times',
    path: '/jamaah/prayer_times',
    location: '/404',
  );
  final settings = JamaahSettingsRoutes();
}

class JamaahSettingsRoutes implements NavigationRouteAbstract {
  @override
  String get name => 'jamaah_settings';
  @override
  String get path => '/jamaah/settings';
  @override
  String get location => '/jamaah/settings';

  final profile = NavigationRoute(
    name: 'jamaah_profile',
    path: 'profile',
    location: '/jamaah/settings/profile',
  );
  final account = NavigationRoute(
    name: 'jamaah_account',
    path: 'account',
    location: '/jamaah/settings/account',
  );
  final notifications = NavigationRoute(
    name: 'jamaah_notifications',
    path: 'notifications',
    location: '/jamaah/settings/notifications',
  );
  final privacy = NavigationRoute(
    name: 'jamaah_privacy',
    path: 'privacy',
    location: '/jamaah/settings/privacy',
  );
  final help = NavigationRoute(
    name: 'jamaah_help',
    path: 'help',
    location: '/jamaah/settings/help',
  );
}
