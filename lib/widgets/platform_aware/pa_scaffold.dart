// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';

class PAScaffold extends StatelessWidget {
  final bool platformAware;
  final bool includePadding;
  final bool largeTitle;
  final bool centerTitle;
  final bool resizeToAvoidBottomInset;
  final Widget? leading;
  final String title;
  final Widget? middle;
  final List<Widget> trailing;
  final Color? appBarColor;
  final Color? backgroundColor;
  final ScrollController? scrollController;
  final Kids? kids;
  final FloatingAction? floatingAction;

  const PAScaffold({
    super.key,
    this.platformAware = true,
    this.includePadding = true,
    this.largeTitle = false,
    this.centerTitle = false,
    this.resizeToAvoidBottomInset = true,
    this.leading,
    this.title = '',
    this.middle,
    this.trailing = const [],
    this.appBarColor,
    this.backgroundColor,
    this.scrollController,
    this.kids,
    this.floatingAction,
  });

  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          ),
          if (kids?.backgroundChild != null) kids!.backgroundChild!,
          Material(
            type: MaterialType.transparency,
            child: kIsWeb
                ? _androidScaffold(context)
                : largeTitle
                    ? _largeScaffold(context)
                    : Platform.isIOS
                        ? _iosScaffold(context)
                        : _androidScaffold(context),
          ),
          if (kids?.foregroundChild != null) kids!.foregroundChild!,
        ],
      );

  Widget _iosScaffold(BuildContext context) => CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: _leading(context),
          automaticallyImplyLeading: false,
          automaticallyImplyMiddle: false,
          middle: _middle(Theme.of(context)),
          trailing: _trailing(context),
          border: _borderless(),
        ),
        child: _body(context),
      );

  Widget _androidScaffold(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: _leading(context),
          automaticallyImplyLeading: false,
          title: _middle(Theme.of(context)),
          actions: trailing,
          elevation: 0.0,
          centerTitle: centerTitle,
        ),
        extendBody: true,
        body: _body(context),
      );

  Widget _largeScaffold(BuildContext context) => Material(
        child: CustomScrollView(
          controller: scrollController,
          physics: kScrollPhysics,
          slivers: kIsWeb
              ? <Widget>[
                  SliverAppBar.large(
                    leading: _leading(context),
                    automaticallyImplyLeading: false,
                    title: _middle(Theme.of(context)),
                    actions: trailing,
                    elevation: 0.0,
                    centerTitle: centerTitle,
                  ),
                ]
              : <Widget>[
                  Platform.isIOS
                      ? CupertinoSliverNavigationBar(
                          largeTitle: _middle(Theme.of(context)),
                          leading: _leading(context),
                          automaticallyImplyLeading: false,
                          automaticallyImplyTitle: false,
                          trailing: _trailing(context),
                          border: _borderless(),
                        )
                      : SliverAppBar.medium(
                          leading: _leading(context),
                          automaticallyImplyLeading: false,
                          title: _middle(Theme.of(context)),
                          actions: trailing,
                          elevation: 0.0,
                          centerTitle: centerTitle,
                        ),
                  SliverToBoxAdapter(
                    child: _body(context),
                  ),
                ],
        ),
      );

  Widget? _leading(BuildContext context) => leading == null
      ? null
      : Material(
          type: MaterialType.transparency,
          child: leading,
        );

  Widget _middle(ThemeData theme) => Material(
        child: middle ?? Text(title),
      );

  Widget? _trailing(BuildContext context) => trailing.isEmpty
      ? null
      : Material(
          type: MaterialType.transparency,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: trailing,
          ),
        );

  Border _borderless() => Border.all(
        color: Colors.transparent,
        width: 0.0,
        style: BorderStyle.none,
      );

  Widget _body(BuildContext context) => Stack(
        children: <Widget>[
          if (kids?.child != null)
            Container(
              padding: includePadding ? kEdgeInsetsAll : null,
              child: kids!.child!,
            ),
          if (kids?.children != null)
            kIsWeb
                ? ListView(
                    controller: scrollController,
                    physics: kScrollPhysics,
                    shrinkWrap: true,
                    padding: includePadding ? kEdgeInsetsHor : null,
                    children: kids!.children!,
                  )
                : largeTitle
                    ? Container(
                        padding: includePadding ? kEdgeInsetsHor : null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: kids!.children!,
                        ),
                      )
                    : ListView(
                        controller: scrollController,
                        physics: kScrollPhysics,
                        shrinkWrap: true,
                        padding: includePadding ? kEdgeInsetsHor : null,
                        children: kids!.children!,
                      ),
        ],
      );
}

class Kids {
  const Kids({
    this.backgroundChild,
    this.foregroundChild,
    this.child,
    this.children,
  }) : assert(
          child == null || children == null,
          'You can only use one of mainChild or mainChildren',
        );

  final Widget? backgroundChild;
  final Widget? foregroundChild;
  final Widget? child;
  final List<Widget>? children;
}

class FloatingAction {
  FloatingAction({
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
  });

  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;
}
