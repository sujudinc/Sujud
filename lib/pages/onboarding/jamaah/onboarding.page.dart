// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  final _pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);
  final _currentPageValueCubit = ValueCubit<int>(0);

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
    _currentPageNotifier.dispose();
    _currentPageValueCubit.close();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final sections = _onboardingSectionArguments(context);

    return PAScaffold(
      includePadding: false,
      trailing: <Widget>[
        GestureDetector(
          child: Row(
            children: <Widget>[
              Text(
                i18n.mosqueAdmin,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 5.0),
              Text(
                i18n.loginHere,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          onTap: () async => _navigation.push(
            path: NavigationPath(
              route: _navigation.navigationRoutes.login,
            ),
          ),
        ),
      ],
      kids: Kids(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  _currentPageValueCubit.value = index;
                  _currentPageNotifier.value = index;
                },
                children: sections
                    .map(
                      (arguments) => OnboardingSection(
                        arguments: arguments,
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 25.0),
            CirclePageIndicator(
              itemCount: sections.length,
              currentPageNotifier: _currentPageNotifier,
            ),
            BlocBuilder<ValueCubit<int>, ValueState<int>>(
              bloc: _currentPageValueCubit,
              builder: (context, state) => Container(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                margin: const EdgeInsets.only(bottom: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    state.value != 0
                        ? IconButton(
                            icon: SujudIcon.leftArrowCircle(size: 50.0),
                            onPressed: () async => _pageController.previousPage(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeInOut,
                            ),
                          )
                        : const SizedBox(),
                    state.value != sections.length - 1
                        ? IconButton(
                            icon: SujudIcon.rightArrowCircle(size: 50.0),
                            onPressed: () async => _pageController.nextPage(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeInOut,
                            ),
                          )
                        : GestureDetector(
                            child: Text(
                              context.i18n.buttonContinue,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            onTap: () => _navigation.goRoute(
                              route: NavigationRoutes().onboarding.mosques,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<OnboardingSectionArguments> _onboardingSectionArguments(
    BuildContext context,
  ) {
    final i18n = context.i18n;

    return <OnboardingSectionArguments>[
      OnboardingSectionArguments(
        title: i18n.onboardingTitle1,
        description: i18n.onboardingDescription1,
      ),
      OnboardingSectionArguments(
        title: i18n.onboardingTitle2,
        description: i18n.onboardingDescription2,
      ),
      OnboardingSectionArguments(
        title: i18n.onboardingTitle3,
        description: i18n.onboardingDescription3,
      ),
      OnboardingSectionArguments(
        title: i18n.onboardingTitle4,
        description: i18n.onboardingDescription4,
      ),
    ];
  }
}
