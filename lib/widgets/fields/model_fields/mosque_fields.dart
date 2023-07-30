import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';
import 'package:sujud/models/models.dart';
import 'package:unicons/unicons.dart';

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

class MosqueLocationField implements MosqueFormField<Location?> {
  @override
  Widget buildFormField(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    String? initialValue,
    ValueChanged<Location?>? onChanged,
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
        SujudMultiFieldBuilder<Location>(
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
    FormFieldState<Location> field, {
    required String fieldName,
    required Map<String, dynamic> values,
    String? value,
  }) {
    if (value != null && value.isNotEmpty) {
      values[fieldName] = value;
    } else {
      values.remove(fieldName);
    }

    field.didChange(values.isEmpty ? null : Location.fromJson(values));
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

class MosqueContactInfoField implements MosqueFormField<ContactInfo?> {
  final _selectedSocialsCubit = MultiSelectCubit<_SocialMediaFormFieldName>([]);

  @override
  Widget buildFormField(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    String? initialValue,
    ValueChanged<ContactInfo?>? onChanged,
  }) {
    final i18n = context.i18n;
    final theme = context.theme;
    final values =
        initialValue != null ? jsonDecode(initialValue) : <String, dynamic>{};

    if (values.isNotEmpty && values['socialMedia'] != null) {
      final socialMedia = values['socialMedia'] as Map<String, dynamic>;

      for (final social in socialMedia.keys) {
        if (socialMedia[social] == null) {
          continue;
        }

        _selectedSocialsCubit.add(
          _SocialMediaFormFieldName.values.firstWhere(
            (element) => element.name == social,
          ),
        );
      }
    }

    return BlocProvider<MultiSelectCubit<_SocialMediaFormFieldName>>(
      create: (_) => _selectedSocialsCubit,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            i18n.headingMosqueContactInfo,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: _headingGap),
          Text(
            i18n.subheadingMosqueContactInfo,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: _contentGap),
          BlocBuilder<MultiSelectCubit<_SocialMediaFormFieldName>,
              MultiSelectState<_SocialMediaFormFieldName>>(
            bloc: _selectedSocialsCubit,
            builder: (context, state) => state.when(
              loading: PALoadingIndicator.new,
              ready: (items) => SujudMultiFieldBuilder<ContactInfo>(
                formKey: formKey,
                fieldName: fieldName,
                builder: (field) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SujudTextField.phone(
                      context,
                      formKey: formKey,
                      countryCodeFieldName:
                          _ContactInfoFormFieldName.countryCode.name,
                      phoneNumberFieldName:
                          _ContactInfoFormFieldName.phoneNumber.name,
                      isRequired: false,
                      initialValue:
                          values[_ContactInfoFormFieldName.phoneNumber.name],
                      onChanged: (value) => _didChange(
                        field,
                        fieldName: _ContactInfoFormFieldName.phoneNumber.name,
                        values: values,
                        value: value,
                      ),
                    ),
                    SujudTextField.email(
                      context,
                      formKey: formKey,
                      fieldName: _ContactInfoFormFieldName.email.name,
                      initialValue:
                          values[_ContactInfoFormFieldName.email.name],
                      isRequired: false,
                      onChanged: (value) => _didChange(
                        field,
                        fieldName: _ContactInfoFormFieldName.email.name,
                        values: values,
                        value: value,
                      ),
                    ),
                    SujudTextField.url(
                      context,
                      formKey: formKey,
                      fieldName: _ContactInfoFormFieldName.url.name,
                      initialValue: values[_ContactInfoFormFieldName.url.name],
                      onChanged: (value) => _didChange(
                        field,
                        fieldName: _ContactInfoFormFieldName.url.name,
                        values: values,
                        value: value,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(i18n.messageSocialMedia),
                        IconButton(
                          onPressed: () => _showDropdown(
                            context,
                            items as List<_SocialMediaFormFieldName>,
                          ),
                          icon: const AddIcon(),
                        ),
                      ],
                    ),
                    if (items.contains(_SocialMediaFormFieldName.facebook))
                      SujudTextField.social(
                        context,
                        formKey: formKey,
                        fieldName: _SocialMediaFormFieldName.facebook.name,
                        socialIcon: const Icon(UniconsLine.facebook),
                        hintText: i18n.facebook,
                        initialValue: values?['socialMedia']
                            ?[_SocialMediaFormFieldName.facebook.name],
                        onChanged: (value) => _onChangedSocialMedia(
                          field,
                          fieldName: _SocialMediaFormFieldName.facebook.name,
                          values: values,
                          value: value,
                        ),
                      ),
                    if (items.contains(_SocialMediaFormFieldName.instagram))
                      SujudTextField.social(
                        context,
                        formKey: formKey,
                        fieldName: _SocialMediaFormFieldName.instagram.name,
                        socialIcon: const Icon(UniconsLine.instagram_alt),
                        hintText: i18n.instagram,
                        initialValue: values?['socialMedia']
                            ?[_SocialMediaFormFieldName.instagram.name],
                        onChanged: (value) => _onChangedSocialMedia(
                          field,
                          fieldName: _SocialMediaFormFieldName.instagram.name,
                          values: values,
                          value: value,
                        ),
                      ),
                    if (items.contains(_SocialMediaFormFieldName.twitter))
                      SujudTextField.social(
                        context,
                        formKey: formKey,
                        fieldName: _SocialMediaFormFieldName.twitter.name,
                        socialIcon: const Icon(UniconsLine.twitter),
                        hintText: i18n.twitter,
                        initialValue: values?['socialMedia']
                            ?[_SocialMediaFormFieldName.twitter.name],
                        onChanged: (value) => _onChangedSocialMedia(
                          field,
                          fieldName: _SocialMediaFormFieldName.twitter.name,
                          values: values,
                          value: value,
                        ),
                      ),
                    if (items.contains(_SocialMediaFormFieldName.youtube))
                      SujudTextField.social(
                        context,
                        formKey: formKey,
                        fieldName: _SocialMediaFormFieldName.youtube.name,
                        socialIcon: const Icon(UniconsLine.youtube),
                        hintText: i18n.youtube,
                        initialValue: values?['socialMedia']
                            ?[_SocialMediaFormFieldName.youtube.name],
                        onChanged: (value) => _onChangedSocialMedia(
                          field,
                          fieldName: _SocialMediaFormFieldName.youtube.name,
                          values: values,
                          value: value,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  String get fieldName => MosqueFormFieldName.contactInfo.name;

  void _showDropdown(
    BuildContext context,
    List<_SocialMediaFormFieldName> items,
  ) {
    final i18n = context.i18n;

    showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ...[
            if (!items.contains(_SocialMediaFormFieldName.facebook))
              DropdownItem(
                value: _SocialMediaFormFieldName.facebook,
                text: i18n.facebook,
              ),
            if (!items.contains(_SocialMediaFormFieldName.instagram))
              DropdownItem(
                value: _SocialMediaFormFieldName.instagram,
                text: i18n.instagram,
              ),
            if (!items.contains(_SocialMediaFormFieldName.twitter))
              DropdownItem(
                value: _SocialMediaFormFieldName.twitter,
                text: i18n.twitter,
              ),
            if (!items.contains(_SocialMediaFormFieldName.youtube))
              DropdownItem(
                value: _SocialMediaFormFieldName.youtube,
                text: i18n.youtube,
              ),
          ]
              .map<Widget>(
                (item) => ListTile(
                  title: Text(item.text),
                  onTap: () {
                    _selectedSocialsCubit.add(item.value);
                    Navigator.of(context).pop();
                  },
                ),
              )
              .toList(),
        ],
      ),
    );
  }

  void _didChange(
    FormFieldState<ContactInfo> field, {
    required String fieldName,
    required Map<String, dynamic> values,
    String? value,
  }) {
    if (value != null && value.isNotEmpty) {
      values[fieldName] = value;
    } else {
      values.remove(fieldName);
    }

    field.didChange(values.isEmpty ? null : ContactInfo.fromJson(values));
  }

  void _onChangedSocialMedia(
    FormFieldState<ContactInfo> field, {
    required String fieldName,
    required Map<String, dynamic> values,
    String? value,
  }) {
    if (values['socialMedia'] == null) {
      values['socialMedia'] = <String, dynamic>{};
    }

    if (value != null && value.isNotEmpty) {
      values['socialMedia'][fieldName] = value;
    } else {
      values['socialMedia'].remove(fieldName);
    }

    if (values['socialMedia'].isEmpty) {
      values.remove('socialMedia');
    }

    field.didChange(
      values.isEmpty
          ? null
          : ContactInfo.fromJson(values).copyWith(
              socialMedia: SocialMedia.fromJson(
                values['socialMedia'],
              ),
            ),
    );
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

enum _ContactInfoFormFieldName {
  countryCode,
  phoneNumber,
  email,
  url,
}

enum _SocialMediaFormFieldName {
  facebook,
  instagram,
  twitter,
  youtube,
}
