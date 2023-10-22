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

class MFAPage extends StatefulWidget {
  const MFAPage({
    this.email,
    super.key,
  });

  final String? email;

  @override
  State<MFAPage> createState() => _MFAPageState();
}

class _MFAPageState extends State<MFAPage> {
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
        title: i18n.titleMfa,
        leading: IconButton(
          onPressed: () => authCubit.back,
          icon: const Icon(Icons.close),
        ),
        kids: Kids(
          children: <Widget>[
            FormBuilder(
              key: _formUtility.formKey,
              initialValue: <String, dynamic>{
                _MfaFormField.email.name: widget.email ?? authCubit.username,
              },
              child: Column(
                children: <Widget>[
                  SujudTextField.email(
                    context,
                    formKey: _formUtility.formKey,
                    fieldName: _MfaFormField.email.name,
                  ),
                  SujudTextField.password(
                    context,
                    formKey: _formUtility.formKey,
                    fieldName: _MfaFormField.code.name,
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
                        if (!_formUtility.saveAndValidate()) {
                          return;
                        }

                        authCubit
                          ..username = _formUtility.getValue(
                            _MfaFormField.email.name,
                          )
                          ..confirmationCode = _formUtility.getValue(
                            _MfaFormField.code.name,
                          )
                          ..confirmMFA();
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

enum _MfaFormField {
  email,
  code,
}
