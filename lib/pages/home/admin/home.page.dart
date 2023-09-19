// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/context.extension.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/pages/home/admin/tabs/tabs.dart';
import 'package:sujud/widgets/widgets.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  State<AdminHomePage> createState() => _AdminHomePagePageState();
}

class _AdminHomePagePageState extends State<AdminHomePage> {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  final _homeCubit = HomePageCubit();

  @override
  void initState() {
    super.initState();

    _homeCubit.hydrate();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = _createTabs(context);
    final icons = tabs.keys.toList();
    final views = tabs.values.toList();
    final currentTabIndex = _getCurrentTabIndexFromRoute(
      GoRouterState.of(context).uri.toString(),
      tabs.keys.toList(),
    );

    return BlocProvider<HomePageCubit>(
      create: (context) => _homeCubit,
      child: PATabScaffold(
        icons: icons,
        views: views,
        onTap: (index) {
          if (index != currentTabIndex) {
            _navigation.goRoute(
              route: icons[index].route,
            );
          }
        },
        tabBuilder: (context, index) => views[index],
        currentIndex: currentTabIndex,
      ),
    );
  }

  Map<GoItem, Widget> _createTabs(BuildContext context) {
    final i18n = context.i18n;

    return <GoItem, Widget>{
      GoItem(
        route: _navigation.navigationRoutes.home.admin.dashboard.itself,
        icon: const Icon(Icons.dashboard_outlined),
        activeIcon: const Icon(Icons.dashboard),
        label: i18n.tabDashboard,
      ): const DashboardTab(),
      GoItem(
        route: _navigation.navigationRoutes.home.admin.settings.itself,
        icon: const Icon(Icons.settings_outlined),
        activeIcon: const Icon(Icons.settings),
        label: i18n.tabSettings,
      ): const SettingsTab(),
    };
  }

  int _getCurrentTabIndexFromRoute(String location, List<GoItem> tabs) {
    final index = tabs.indexWhere((item) => item.route.location == location);

    return index == -1 ? 0 : index;
  }
}

class GoItem extends BottomNavigationBarItem {
  const GoItem({
    required this.route,
    required Widget icon,
    required Widget activeIcon,
    String? label,
  }) : super(icon: icon, activeIcon: activeIcon, label: label);

  final NavigationRoute route;
}
