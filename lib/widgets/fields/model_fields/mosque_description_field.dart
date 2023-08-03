import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

import 'package:sujud/configs/configs.dart';

export 'mosque_contact_info_field.dart';
export 'mosque_name_field.dart';

class MosqueDescriptionField implements MosqueFormField<String?> {
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
          i18n.headingMosqueDescription,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueDescription,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudTextField.description(
          context,
          formKey: formKey,
          fieldName: MosqueFormFieldName.description.name,
          hintText: i18n.hintMosqueDescription,
          initialValue: initialValue,
          onChanged: onChanged,
        ),
      ],
    );
  }

  @override
  String get fieldName => MosqueFormFieldName.description.name;
}
