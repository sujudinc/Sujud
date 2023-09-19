// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/assets/assets.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/pages/home/admin/tabs/subtabs/announcements.subtab.dart';
import 'package:sujud/pages/home/admin/tabs/subtabs/prayer_times.subtab.dart';
import 'package:sujud/widgets/widgets.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab>
    with TickerProviderStateMixin {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  late final _tabController = TabController(length: 2, vsync: this);
  late final _homePageCubit = context.read<HomePageCubit>();

  @override
  Widget build(BuildContext context) {
    final selectedMosque = _homePageCubit.selectedMosque;

    return PAScaffold(
      platformAware: false,
      includePadding: false,
      title: 'Dashboard',
      kids: Kids(
        child: selectedMosque != null
            ? _buildDashboardView(context, selectedMosque)
            : _buildEmptyView(context),
      ),
    );
  }

  Widget _buildDashboardView(BuildContext context, Mosque mosque) {
    final i18n = context.i18n;

    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            tabs: <Tab>[
              Tab(
                text: i18n.tabPrayerTimes,
              ),
              Tab(
                text: i18n.tabAnnouncements,
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const <Widget>[
                PrayerTimesSubtab(),
                AnnouncementsSubtab(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyView(BuildContext context) {
    final i18n = context.i18n;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            bottom: 25.0,
          ),
          child: Image.asset(
            kImageMosque,
            width: 300.0,
          ),
        ),
        Text(
          i18n.messageRegister,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          i18n.descriptionCreateMosquePage,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 25.0,
        ),
        SujudButton(
          text: i18n.buttonCreateMosque,
          onTap: () async {
            _navigation.goRoute(
              route: _navigation
                  .navigationRoutes.home.admin.dashboard.createMosque.itself,
            );
          },
        ),
      ],
    );
  }
}
