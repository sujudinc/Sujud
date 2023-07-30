// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class ConfirmAccountPage extends StatefulWidget {
  const ConfirmAccountPage({super.key});

  @override
  State<ConfirmAccountPage> createState() => _ConfirmAccountPageState();
}

class _ConfirmAccountPageState extends State<ConfirmAccountPage> {
  final _form = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final authCubit = context.read<AuthCubit>();

    _form.setValue(
      fieldName: _ConfirmAccountFormField.email.name,
      value: authCubit.username,
    );

    return BlocProvider<TimerCubit>(
      create: (context) => TimerCubit(60),
      child: BlocListener<AuthCubit, AuthState>(
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
          title: i18n.titleConfirmAccount,
          leading: IconButton(
            onPressed: () => authCubit.back,
            icon: const BackIcon(),
          ),
          kids: Kids(
            children: <Widget>[
              FormBuilder(
                key: _form.formKey,
                child: Column(
                  children: <Widget>[
                    SujudTextField.email(
                      context,
                      formKey: _form.formKey,
                      fieldName: _ConfirmAccountFormField.email.name,
                      initialValue: authCubit.username,
                    ),
                    SujudTextField.confirmationCode(
                      context,
                      formKey: _form.formKey,
                      fieldName: _ConfirmAccountFormField.code.name,
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
                        text: i18n.buttonConfirm,
                        onTap: () async {
                          _form.saveAndValidate();

                          authCubit
                            ..username = _form.getValue(
                              _ConfirmAccountFormField.email.name,
                            )
                            ..confirmationCode = _form.getValue(
                              _ConfirmAccountFormField.code.name,
                            );

                          await authCubit.confirmAccount();
                        },
                      ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              BlocBuilder<AuthCubit, AuthState>(
                bloc: authCubit,
                builder: (context, state) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(i18n.labelDidntReceiveCode),
                    authCubit.confirmationCodeSent
                        ? BlocBuilder<TimerCubit, TimerState>(
                            builder: (context, state) =>
                                state is TimerStateRunning
                                    ? Text(
                                        i18n.labelWaitForCode(
                                          state.timeRemaining,
                                        ),
                                      )
                                    : Container(),
                          )
                        : TextButton(
                            onPressed: () => authCubit
                              ..username = _form.getInstantValue(
                                _ConfirmAccountFormField.email.name,
                              )
                              ..resendConfirmationCode(),
                            child: Text(
                              i18n.buttonResendCode,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum _ConfirmAccountFormField {
  email,
  code,
}
