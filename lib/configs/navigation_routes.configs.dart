// 🌎 Project imports:
import 'package:sujud/models/models.dart';

class NavigationRoutes {
  final root = NavigationRoute(
    name: 'root',
    path: '/',
    location: '/',
  );
  final loading = NavigationRoute(
    name: 'loading',
    path: '/loading',
    location: '/loading',
  );
  final error = NavigationRoute(
    name: 'error',
    path: '/404',
    location: '/404',
  );
  final onboarding = OnboardingRoutes();
  final auth = AuthRoutes();
  final home = HomeRoutes();
}

class AuthRoutes {
  final itself = NavigationRoute(
    name: 'auth',
    path: '/auth',
    location: '/auth',
  );
  final mfa = NavigationRoute(
    name: 'mfa',
    path: 'mfa',
    location: '/auth/mfa',
  );
  final forgot = NavigationRoute(
    name: 'forgot',
    path: 'forgot',
    location: '/auth/forgot',
  );
  final confirm = NavigationRoute(
    name: 'confirm',
    path: 'confirm/:section(email|phone)',
    location: '/auth/confirm/:section(email|phone)',
  );
  final register = RegisterRoutes();
}

class RegisterRoutes {
  final itself = NavigationRoute(
    name: 'register',
    path: 'register',
    location: '/auth/register',
  );
  final selfie = NavigationRoute(
    name: 'selfie',
    path: 'selfie',
    location: '/auth/register/selfie',
  );
  final name = NavigationRoute(
    name: 'name',
    path: 'name',
    location: '/auth/register/name',
  );
  final birth = NavigationRoute(
    name: 'birth',
    path: 'birth',
    location: '/auth/register/birth',
  );
  final phone = NavigationRoute(
    name: 'phone',
    path: 'phone',
    location: '/auth/register/phone',
  );
  final email = NavigationRoute(
    name: 'email',
    path: 'email',
    location: '/auth/register/email',
  );
}

class OnboardingRoutes {
  final itself = NavigationRoute(
    name: 'onboarding',
    path: '/onboarding',
    location: '/onboarding',
  );
  final mosques = NavigationRoute(
    name: 'mosques',
    path: 'mosques',
    location: '/onboarding/mosques',
  );
}

class HomeRoutes {
  final admin = AdminRoutes();
  final jamaah = JamaahRoutes();
}

class AdminRoutes {
  final itself = NavigationRoute(
    name: 'admin',
    path: 'admin/:subRoute(dashboard|settings)',
    location: '/admin',
  );
  final dashboard = AdminDashboardRoutes();
  final settings = AdminSettingsRoutes();
}

class AdminDashboardRoutes {
  final itself = NavigationRoute(
    name: 'admin_dashboard',
    path: 'dashboard',
    location: '/admin/dashboard',
  );
  final createMosque = CreateMosqueRoutes();
}

class CreateMosqueRoutes {
  final itself = NavigationRoute(
    name: 'create_mosque',
    path: 'create-mosque',
    location: '/admin/dashboard/create-mosque',
  );
  final field = NavigationRoute(
    name: 'create_mosque_field',
    path: 'field',
    location: '/admin/dashboard/create-mosque/field',
  );
}

class AdminSettingsRoutes {
  final itself = NavigationRoute(
    name: 'admin_settings',
    path: 'settings',
    location: '/admin/settings',
  );
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
  final itself = NavigationRoute(
    name: 'jamaah',
    path: 'jamaah/:subRoute(dashboard|settings)',
    location: '/home/jamaah',
  );
  final dashboard = JamaahDashboardRoutes();
  final settings = JamaahSettingsRoutes();
}

class JamaahDashboardRoutes {
  final itself = NavigationRoute(
    name: 'jamaah_dashboard',
    path: 'dashboard',
    location: '/jamaah/dashboard',
  );
}

class JamaahSettingsRoutes {
  final itself = NavigationRoute(
    name: 'jamaah_settings',
    path: 'settings',
    location: '/jamaah/settings',
  );
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
