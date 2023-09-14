// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _form = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );

  final _pageController = PageController();
  final _currentPageValueCubit = ValueCubit<int>(0);
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  void dispose() {
    super.dispose();

    _pageController.dispose();
    _currentPageValueCubit.close();
    _currentPageNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final authCubit = context.read<AuthCubit>();
    final sections = _registerSectionArguments(context);

    return BlocListener<AuthCubit, AuthState>(
      bloc: authCubit,
      listener: (context, state) => state.whenOrNull(
        failure: (exception) => authCubit
            .displayToast(
              title: i18n.errorTitle,
              message: exception.name(context),
            )
            .show(context),
      ),
      child: PAScaffold(
        includePadding: false,
        largeTitle: true,
        title: i18n.bismillah,
        leading: IconButton(
          onPressed: () => authCubit.back,
          icon: SujudIcon.back(),
        ),
        trailing: <Widget>[
          CirclePageIndicator(
            itemCount: sections.length,
            currentPageNotifier: _currentPageNotifier,
          ),
        ],
        kids: Kids(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FormBuilder(
                key: _form.formKey,
                child: ExpandablePageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    _currentPageValueCubit.value = index;
                    _currentPageNotifier.value = index;
                  },
                  children: sections
                      .map((arguments) => RegisterSection(
                            arguments: arguments,
                          ))
                      .toList(),
                ),
              ),
              BlocBuilder<AuthCubit, AuthState>(
                bloc: authCubit,
                builder: (context, state) => state is AuthStateLoading
                    ? const PALoadingIndicator()
                    : Container(
                        padding: kEdgeInsetsHor,
                        margin: const EdgeInsets.only(top: 15.0),
                        child: BlocBuilder<ValueCubit<int>, ValueState<int>>(
                          bloc: _currentPageValueCubit,
                          builder: (context, state) => state.value ==
                                  sections.length - 1
                              ? state is RegisterPageStateLoading
                                  ? const PALoadingIndicator()
                                  : SujudButton(
                                      text: i18n.buttonRegister,
                                      onTap: () async {
                                        if (!_form.saveAndValidate()) {
                                          return;
                                        }

                                        authCubit
                                          ..firstName = _form.getValue(
                                            _RegisterFormField.firstName.name,
                                          )
                                          ..lastName = _form.getValue(
                                            _RegisterFormField.lastName.name,
                                          )
                                          ..username = _form.getValue(
                                            _RegisterFormField.email.name,
                                          )
                                          ..password = _form.getValue(
                                            _RegisterFormField.password.name,
                                          )
                                          ..register();
                                      },
                                    )
                              : SujudButton(
                                  text: i18n.buttonNext,
                                  onTap: () async {
                                    _pageController.nextPage(
                                      duration: const Duration(
                                        milliseconds: 400,
                                      ),
                                      curve: Curves.easeInOut,
                                    );
                                  },
                                ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<RegisterSectionArguments> _registerSectionArguments(
    BuildContext context,
  ) {
    final i18n = context.i18n;
    final authCubit = context.read<AuthCubit>();

    return <RegisterSectionArguments>[
      RegisterSectionArguments(
        title: i18n.registerStep1,
        children: <SujudFormFieldAbstract>[
          SujudTextField.name(
            context,
            formKey: _form.formKey,
            fieldName: _RegisterFormField.firstName.name,
            initialValue: authCubit.firstName,
          ),
          SujudTextField.name(
            context,
            formKey: _form.formKey,
            fieldName: _RegisterFormField.lastName.name,
            initialValue: authCubit.lastName,
            type: NameFieldType.lastName,
          ),
        ],
      ),
      RegisterSectionArguments(
        title: i18n.registerStep2,
        children: <SujudFormFieldAbstract>[
          SujudTextField.email(
            context,
            formKey: _form.formKey,
            fieldName: _RegisterFormField.email.name,
            initialValue: authCubit.username,
          ),
          SujudTextField.password(
            context,
            formKey: _form.formKey,
            fieldName: _RegisterFormField.password.name,
            initialValue: authCubit.password,
          ),
        ],
      ),
    ];
  }
}

enum _RegisterFormField {
  firstName,
  lastName,
  email,
  password,
}
