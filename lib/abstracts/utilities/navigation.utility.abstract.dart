// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';
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
