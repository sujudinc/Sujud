// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';

import 'package:sujud/widgets/widgets.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  final _navigatorUtility = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return PAScaffold(
      kids: Kids(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              i18n.message404,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            SujudButton(
              text: i18n.buttonBack,
              onTap: () async => _navigatorUtility.back(),
            ),
          ],
        ),
      ),
    );
  }
}
