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

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({
    this.email,
    super.key,
  });

  final String? email;

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
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
        title: i18n.titleResetPassword,
        leading: IconButton(
          onPressed: () => authCubit.back,
          icon: SujudIcon.back(),
        ),
        kids: Kids(
          children: <Widget>[
            FormBuilder(
              key: _formUtility.formKey,
              initialValue: <String, dynamic>{
                _ForgotPasswordFormField.email.name:
                    widget.email ?? authCubit.username,
              },
              child: Column(
                children: <Widget>[
                  SujudTextField.email(
                    context,
                    formKey: _formUtility.formKey,
                    fieldName: _ForgotPasswordFormField.email.name,
                    initialValue: authCubit.username,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              bloc: authCubit,
              builder: (context, state) => state is AuthStateLoading
                  ? const PALoadingIndicator()
                  : SujudButton(
                      text: i18n.buttonReset,
                      onTap: () async {
                        if (!_formUtility.saveAndValidate()) {
                          return;
                        }

                        authCubit
                          ..username = _formUtility.getValue(
                            _ForgotPasswordFormField.email.name,
                          )
                          ..resetPassword();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _ForgotPasswordFormField {
  email,
}
