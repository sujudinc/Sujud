// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/models/models.dart';

class GoBottomNavigationBarItem extends BottomNavigationBarItem {
  const GoBottomNavigationBarItem({
    required this.route,
    required Widget icon,
    required Widget activeIcon,
    String? label,
  }) : super(icon: icon, activeIcon: activeIcon, label: label);

  final NavigationRoute route;
}
