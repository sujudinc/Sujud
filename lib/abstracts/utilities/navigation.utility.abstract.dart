// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:sujud/configs/configs.dart';
// 🌎 Project imports:
import 'package:sujud/models/models.dart';

abstract class NavigationUtilityAbstract {
  NavigationRoutes get navigationRoutes;
  NavigationPath get currentPath;
  Stream<NavigationPath> get navigationPathStream;

  RouterConfig<Object> get routerConfig;
  RouterDelegate<Object> get routerDelegate;
  RouteInformationParser<Object> get routeInformationParser;
  RouteInformationProvider? get routeInformationProvider;

  void back({Object? data});

  void go({required NavigationPath path});
  void goRoute({
    required NavigationRouteAbstract route,
    Map<String, String>? queryParameters,
  });

  Future<Object?> push({required NavigationPath path});
  Future<Object?> pushRoute({
    required NavigationRouteAbstract route,
    Map<String, String>? queryParameters,
  });

  set subRoute(String subRoute);
  set module(String module);
  set section(String section);
  set fragment(String fragment);

  void setQueryParameters(
    Map<String, String> parameters, {
    bool retain = false,
  });
}

// enum NavigationRoute {
//   loading(
//     path: '/loading',
//     name: 'loading',
//     location: '/loading',
//   ),
//   onboarding(
//     path: '/onboarding',
//     name: 'onboarding',
//     location: '/onboarding',
//   ),
//   mosques(
//     path: 'mosques',
//     name: 'mosques',
//     location: '/onboarding/mosques',
//   ),
//   register(
//     path: '/register',
//     name: 'register',
//     location: '/register',
//   ),
//   login(
//     path: '/login',
//     name: 'login',
//     location: '/login',
//   ),
//   forgot(
//     path: '/forgot',
//     name: 'forgot',
//     location: 'login/forgot',
//   ),
//   confirm(
//     path: '/confirm/:section(email|phone)',
//     name: 'confirm',
//     location: '/login/confirm/:section(email|phone)',
//   ),
//   mfa(
//     path: '/mfa',
//     name: 'mfa',
//     location: '/login/mfa',
//   ),
//   home(
//     path: '/home/:subRoute(admin|jamaah)/:module(dashboard|settings)',
//     name: 'home',
//     location: '/home',
//     subRoutes: <String, String>{
//       'admin': '/home/admin/:module(dashboard|settings)',
//       'jamaah': '/home/jamaah/:module(dashboard|settings)',
//     },
//     modules: <String, String>{
//       'admin-dashboard': '/home/admin/dashboard',
//       'admin-settings': '/home/admin/settings',
//       'jamaah-dashboard': '/home/jamaah/dashboard',
//       'jamaah-settings': '/home/jamaah/settings',
//     },
//   ),
//   createMosque(
//     path: 'create-mosque',
//     name: 'create-mosque',
//     location: '/home/dashboard/create-mosque',
//   ),
//   createMosqueField(
//     path:
//         'create_mosque_field/:section(name|description|images|address|hours|contact_info)',
//     name: 'create-mosque-field',
//     location:
//         '/home/dashboard/create-mosque/create_mosque_field/:section(name|description|images|address|hours|contact_info)',
//   ),
//   createAnnouncement(
//     path: 'create-announcement',
//     name: 'create-announcement',
//     location: '/home/dashboard/create-announcement',
//   );
//
//   const NavigationRoute({
//     required this.path,
//     required this.name,
//     required this.location,
//     this.subRoutes,
//     this.modules,
//   });
//
//   final String path;
//   final String name;
//   final String location;
//   final Map<String, String>? subRoutes;
//   final Map<String, String>? modules;
// }
