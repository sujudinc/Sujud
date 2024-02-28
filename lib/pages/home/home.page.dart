// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.shell,
    this.isAdmin = false,
    super.key,
  });

  final StatefulNavigationShell shell;
  final bool isAdmin;

  @override
  State<HomePage> createState() => _HomePagePageState();
}

class _HomePagePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return PATabScaffold(
      platformAware: false,
      key: UniqueKey(),
      currentView: widget.shell,
      currentIndex: widget.shell.currentIndex,
      icons: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: SujudIcon.dashboard(),
          activeIcon: SujudIcon.dashboard(),
          label: widget.isAdmin ? i18n.tabDashboard : i18n.tabPrayerTimes,
        ),
        BottomNavigationBarItem(
          icon: SujudIcon.settings(),
          activeIcon: SujudIcon.settings(),
          label: i18n.tabSettings,
        ),
      ],
      onTap: _onTabChange,
    );
  }

  void _onTabChange(int index) {
    widget.shell.goBranch(
      index,
      initialLocation: widget.shell.currentIndex == index,
    );
  }
}
