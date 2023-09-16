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
import 'package:sujud/widgets/widgets.dart';

class DashboardTab extends StatefulWidget {
  const DashboardTab({super.key});

  @override
  State<DashboardTab> createState() => _DashboardTabState();
}

class _DashboardTabState extends State<DashboardTab> {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final homePageCubit = context.read<HomePageCubit>();
    final selectedMosque = homePageCubit.selectedMosque;

    return PAScaffold(
      largeTitle: true,
      title: homePageCubit.selectedMosque != null
          ? selectedMosque!.name
          : i18n.dashboard,
      kids: Kids(
        child: homePageCubit.selectedMosque != null
            ? _buildDashboardView(context, selectedMosque!)
            : _buildEmptyView(context),
      ),
    );
  }

  Widget _buildDashboardView(BuildContext context, Mosque mosque) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            mosque.name,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      );

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
