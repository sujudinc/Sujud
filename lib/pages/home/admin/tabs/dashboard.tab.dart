// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/assets/assets.dart';
import 'package:sujud/extensions/extensions.dart';
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

    return PAScaffold(
      title: i18n.dashboard,
      kids: Kids(
        child: Column(
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
                  route: _navigation.navigationRoutes.home.admin.dashboard
                      .createMosque.itself,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
