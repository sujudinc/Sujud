// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:unicons/unicons.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/context.extension.dart';
import 'package:sujud/pages/home/jamaah/tabs/tabs.dart';
import 'package:sujud/widgets/widgets.dart';

class JamaahHomePage extends StatefulWidget {
  const JamaahHomePage({Key? key}) : super(key: key);

  @override
  State<JamaahHomePage> createState() => _JamaahHomePagePageState();
}

class _JamaahHomePagePageState extends State<JamaahHomePage> {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) => _buildTabView(context);

  Widget _buildTabView(BuildContext context) {
    final tabs = _createTabs(context);
    final icons = tabs.keys.toList();
    final views = tabs.values.toList();
    final currentTabIndex = _getCurrentTabIndexFromRoute(
      GoRouterState.of(context).location,
      tabs.keys.toList(),
    );

    return PATabScaffold(
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
    );
  }

  Map<GoBottomNavigationBarItem, Widget> _createTabs(BuildContext context) {
    final i18n = context.i18n;

    return <GoBottomNavigationBarItem, Widget>{
      GoBottomNavigationBarItem(
        route: _navigation.navigationRoutes.home.jamaah.dashboard.itself,
        icon: const Icon(UniconsLine.archway),
        activeIcon: const Icon(UniconsLine.archway),
        label: i18n.tabDashboard,
      ): PrayerTimesTab(),
      GoBottomNavigationBarItem(
        route: _navigation.navigationRoutes.home.jamaah.settings.itself,
        icon: const Icon(UniconsLine.cog),
        activeIcon: const Icon(UniconsLine.cog),
        label: i18n.tabSettings,
      ): const SettingsTab(),
    };
  }

  int _getCurrentTabIndexFromRoute(
    String location,
    List<GoBottomNavigationBarItem> tabs,
  ) {
    final index = tabs.indexWhere((item) => item.route.location == location);

    return index == -1 ? 0 : index;
  }
}
