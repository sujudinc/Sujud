// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/context.extension.dart';
import 'package:sujud/i18n/app_localizations.dart';
import 'package:sujud/widgets/widgets.dart';

class SujudApp extends StatelessWidget {
  SujudApp({
    required this.environment,
    super.key,
  });

  final Environment environment;

  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider<AuthCubit>(create: (context) => AuthCubit()),
          BlocProvider<NetworkCubit>(create: (context) => NetworkCubit()),
          BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
        ],
        child: PARouterApp(
          title: 'Sujud ${environment.name.toUpperCase()}',
          theme: ThemeConfig.light,
          darkTheme: ThemeConfig.dark,
          debugShowCheckedModeBanner: environment == Environment.development,
          platformAware: true,
          scaffoldMessengerKey: _scaffoldMessengerKey,
          routeInformationProvider: _navigation.routeInformationProvider,
          routeInformationParser: _navigation.routeInformationParser,
          routerDelegate: _navigation.routerDelegate,
          localizationsDelegates: const <LocalizationsDelegate>[
            AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            FormBuilderLocalizations.delegate,
          ],
          supportedLocales: const <Locale>[
            Locale('en'),
          ],
          onGenerateTitle: (context) => context.i18n.appTitle,
        ),
      );
}

enum Environment {
  development,
  production,
  staging,
}
