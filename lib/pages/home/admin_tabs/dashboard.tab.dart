// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import 'package:sujud/assets/assets.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({
    required this.shell,
    super.key,
  });

  final StatefulNavigationShell shell;

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  final _dashboardTabCubit = DashboardTabCubit();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final i18n = context.i18n;

    return PAScaffold(
      includePadding: false,
      title: i18n.titleDashboard,
      kids: Kids(
        child: BlocBuilder<DashboardTabCubit, DashboardTabState>(
          bloc: _dashboardTabCubit,
          builder: (context, state) => state.when(
            loading: () => const LoadingStateView(),
            empty: () => EmptyStateView(
              image: kImageMosque,
              title: i18n.messageCreateMosquePage,
              description: i18n.descriptionCreateMosquePage,
              buttonLabel: i18n.buttonCreateMosque,
              onTap: () => const CreateMosqueRoute().push(context),
            ),
            ready: (selectedMosque) => DefaultTabController(
              initialIndex: widget.shell.currentIndex,
              length: _tabs.length,
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: TabController(
                      initialIndex: widget.shell.currentIndex,
                      length: _tabs.length,
                      vsync: this,
                    ),
                    isScrollable: true,
                    labelColor: Colors.black,
                    tabs: _tabs,
                    onTap: _onTabChange,
                  ),
                  Expanded(
                    child: widget.shell,
                  ),
                ],
              ),
            ),
            failure: () => FailureStateView(
              description: i18n.errorGeneric,
              onTap: () async => _dashboardTabCubit.init(),
            ),
          ),
        ),
      ),
    );
  }

  List<Tab> get _tabs => <Tab>[
        Tab(text: context.i18n.tabPrayerTimes),
        Tab(text: context.i18n.tabAnnouncements),
      ];

  void _onTabChange(int index) => widget.shell.goBranch(
        index,
        initialLocation: widget.shell.currentIndex == index,
      );
}
