// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PATabScaffold extends StatelessWidget {
  const PATabScaffold({
    required this.currentView,
    required this.currentIndex,
    required this.icons,
    this.platformAware = true,
    this.onTap,
    this.restorationID,
    Key? key,
  }) : super(key: key);

  final Widget currentView;
  final int currentIndex;
  final List<BottomNavigationBarItem> icons;
  final bool platformAware;
  final ValueChanged<int>? onTap;
  final String? restorationID;

  @override
  Widget build(BuildContext context) => kIsWeb
      ? _standardScaffold()
      : Platform.isIOS && platformAware
          ? _cupertinoScaffold()
          : _standardScaffold();

  Widget _cupertinoScaffold() => CupertinoTabScaffold(
        key: key,
        tabBar: CupertinoTabBar(
          items: icons,
          onTap: onTap,
          currentIndex: currentIndex,
          border: Border.all(
            color: Colors.transparent,
            width: 0.0,
            style: BorderStyle.none,
          ),
        ),
        tabBuilder: (context, index) => currentView,
        resizeToAvoidBottomInset: false,
        restorationId: restorationID,
      );

  Widget _standardScaffold() => Scaffold(
        key: key,
        body: currentView,
        bottomNavigationBar: BottomNavigationBar(
          items: icons,
          onTap: onTap,
          currentIndex: currentIndex,
          elevation: 0.0,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
        resizeToAvoidBottomInset: false,
        restorationId: restorationID,
      );
}
