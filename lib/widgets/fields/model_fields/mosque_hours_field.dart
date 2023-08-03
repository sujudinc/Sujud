import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';
import 'package:sujud/models/models.dart';

import 'package:sujud/configs/configs.dart';

class MosqueHoursField implements MosqueFormField<Hours?> {
  @override
  Widget buildFormField(
      BuildContext context, {
        required GlobalKey<FormBuilderState> formKey,
        String? initialValue,
        ValueChanged<Hours?>? onChanged,
      }) {
    final i18n = context.i18n;
    final theme = context.theme;
    final values =
    initialValue != null ? jsonDecode(initialValue) : <String, dynamic>{};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          i18n.headingMosqueHours,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueHours,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudMultiFieldBuilder<Hours>(
          formKey: formKey,
          fieldName: fieldName,
          builder: (field) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SujudTextField(
                formKey: formKey,
                fieldName: MosqueFormFieldName.name.name,
                hintText: i18n.hintMosqueName,
                initialValue: initialValue,
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _HoursFormFieldName.monday.name,
                  values: values,
                  value: value,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  String get fieldName => MosqueFormFieldName.hours.name;

  void _didChange(
      FormFieldState<Hours> field, {
        required String fieldName,
        required Map<String, dynamic> values,
        String? value,
      }) {
    if (value != null && value.isNotEmpty) {
      values[fieldName] = value;
    } else {
      values.remove(fieldName);
    }

    field.didChange(values.isEmpty ? null : Hours.fromJson(values));
  }
}

enum _HoursFormFieldName {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}
