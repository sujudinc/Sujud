import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';
import 'package:sujud/models/models.dart';

export 'mosque_contact_info_field.dart';

const _headingGap = 10.0;
const _contentGap = 20.0;

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
        const SizedBox(height: _headingGap),
        Text(
          i18n.subheadingMosqueName,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: _contentGap),
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
        const SizedBox(height: _headingGap),
        Text(
          i18n.subheadingMosqueDescription,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: _contentGap),
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
        const SizedBox(height: _headingGap),
        Text(
          i18n.subheadingMosqueImages,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: _contentGap),
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
        const SizedBox(height: _headingGap),
        Text(
          i18n.subheadingMosqueLocation,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: _contentGap),
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
        const SizedBox(height: _headingGap),
        Text(
          i18n.subheadingMosqueHours,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: _contentGap),
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
                  fieldName: _LocationFormFieldName.addressLine1.name,
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

enum _LocationFormFieldName {
  addressLine1,
  addressLine2,
  addressLine3,
  city,
  province,
  country,
  postalCode,
}

enum HoursFormFieldName {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}
