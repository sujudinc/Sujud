// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class MosqueImagesField implements MosqueFormField<List<String>?> {
  @override
  Widget buildFormField(
      BuildContext context, {
        required GlobalKey<FormBuilderState> formKey,
        String? initialValue,
        ValueChanged<List<String>?>? onChanged,
      }) {
    final i18n = context.i18n;
    final theme = context.theme;
    final values = initialValue != null
        ? jsonDecode(initialValue) as List<String>
        : <String>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          i18n.headingMosqueImages,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueImages,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudMultiMediaField(
          formKey: formKey,
          fieldName: MosqueFormFieldName.images.name,
          initialValue: values,
          // onChanged: onChanged,
        ),
      ],
    );
  }

  @override
  String get fieldName => MosqueFormFieldName.images.name;
}
