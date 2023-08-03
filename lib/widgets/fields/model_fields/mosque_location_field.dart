import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';
import 'package:sujud/models/models.dart';

import 'package:sujud/configs/configs.dart';

class MosqueLocationField implements MosqueFormField<Address?> {
  @override
  Widget buildFormField(
      BuildContext context, {
        required GlobalKey<FormBuilderState> formKey,
        String? initialValue,
        ValueChanged<Address?>? onChanged,
      }) {
    final i18n = context.i18n;
    final theme = context.theme;
    final values =
    initialValue != null ? jsonDecode(initialValue) : <String, dynamic>{};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          i18n.headingMosqueLocation,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueLocation,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudMultiFieldBuilder<Address>(
          formKey: formKey,
          fieldName: fieldName,
          onChanged: onChanged,
          builder: (field) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.addressLine1.name,
                hintText: i18n.addressLine1,
                initialValue: values[_LocationFormFieldName.addressLine1.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.addressLine1.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.addressLine2.name,
                hintText: i18n.addressLine2,
                initialValue: values[_LocationFormFieldName.addressLine2.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.addressLine2.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.addressLine3.name,
                hintText: i18n.addressLine3,
                initialValue: values[_LocationFormFieldName.addressLine3.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.addressLine3.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.city.name,
                hintText: i18n.city,
                initialValue: values[_LocationFormFieldName.city.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.city.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.province.name,
                hintText: i18n.province,
                initialValue: values[_LocationFormFieldName.province.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.province.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.postalCode.name,
                hintText: i18n.postalCode,
                initialValue: values[_LocationFormFieldName.postalCode.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.postalCode.name,
                  values: values,
                  value: value,
                ),
              ),
              SujudTextField(
                formKey: formKey,
                fieldName: _LocationFormFieldName.country.name,
                hintText: i18n.country,
                initialValue: values[_LocationFormFieldName.country.name],
                onChanged: (value) => _didChange(
                  field,
                  fieldName: _LocationFormFieldName.country.name,
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
  String get fieldName => MosqueFormFieldName.location.name;

  void _didChange(
      FormFieldState<Address> field, {
        required String fieldName,
        required Map<String, dynamic> values,
        String? value,
      }) {
    if (value != null && value.isNotEmpty) {
      values[fieldName] = value;
    } else {
      values.remove(fieldName);
    }

    field.didChange(values.isEmpty ? null : Address.fromJson(values));
  }
}

enum _LocationFormFieldName {
  addressLine1,
  addressLine2,
  addressLine3,
  city,
  province,
  country,
  postalCode,
}
