import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

import 'package:sujud/configs/configs.dart';

class MosqueNameField implements MosqueFormField<String?> {
  @override
  Widget buildFormField(
      BuildContext context, {
        required GlobalKey<FormBuilderState> formKey,
        String? initialValue,
        ValueChanged<String?>? onChanged,
      }) {
    final i18n = context.i18n;
    final theme = context.theme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          i18n.headingMosqueName,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueName,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudTextField(
          formKey: formKey,
          fieldName: MosqueFormFieldName.name.name,
          hintText: i18n.hintMosqueName,
          initialValue: initialValue,
          onChanged: onChanged,
        ),
      ],
    );
  }

  @override
  String get fieldName => MosqueFormFieldName.name.name;
}
