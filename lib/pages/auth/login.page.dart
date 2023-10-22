// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({this.redirectTo, super.key});

  final String? redirectTo;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formUtility = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final authCubit = context.read<AuthCubit>();

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
        largeTitle: true,
        title: i18n.asalaamuAlaikum,
        leading: IconButton(
          onPressed: () => authCubit.toOnboardingPage,
          icon: SujudIcon.close(),
        ),
        kids: Kids(
          children: <Widget>[
            FormBuilder(
              key: _formUtility.formKey,
              child: Column(
                children: <Widget>[
                  SujudTextField.email(
                    context,
                    formKey: _formUtility.formKey,
                    fieldName: _LoginFormFieldName.email.name,
                    initialValue: authCubit.username,
                  ),
                  SujudTextField.password(
                    context,
                    formKey: _formUtility.formKey,
                    fieldName: _LoginFormFieldName.password.name,
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Text(
                i18n.buttonForgotPassword,
              ),
              onTap: () {
                authCubit
                  ..username = _formUtility.getInstantValue(
                    _LoginFormFieldName.email.name,
                  )
                  ..toForgotPasswordPage;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              bloc: authCubit,
              builder: (context, state) => state is AuthStateLoading
                  ? const PALoadingIndicator()
                  : SujudButton(
                      text: i18n.buttonLogin,
                      onTap: () async {
                        if (!_formUtility.saveAndValidate()) {
                          return;
                        }

                        authCubit
                          ..username = _formUtility.getValue(
                            _LoginFormFieldName.email.name,
                          )
                          ..password = _formUtility.getValue(
                            _LoginFormFieldName.password.name,
                          )
                          ..login();
                      },
                    ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Text(
              i18n.messageRegister,
            ),
            const SizedBox(
              height: 20.0,
            ),
            SujudButton(
              text: i18n.buttonRegister,
              onTap: () {
                authCubit
                  ..username = _formUtility.getInstantValue(
                    _LoginFormFieldName.email.name,
                  )
                  ..toRegisterPage;
              },
            ),
          ],
        ),
      ),
    );
  }
}

enum _LoginFormFieldName {
  email,
  password,
}
