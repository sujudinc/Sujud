// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

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
        initialValue != null ? json.decode(initialValue) : <String, dynamic>{};

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
          const SizedBox(height: kHeadingGap),
          Text(
            i18n.subheadingMosqueContactInfo,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: kContentGap),
          BlocBuilder<MultiSelectCubit<_SocialMediaFormFieldName>,
                  MultiSelectState<_SocialMediaFormFieldName>>(
              bloc: _selectedSocialsCubit,
              builder: (context, state) {
                final items = state.items;

                return SujudMultiFieldBuilder<ContactInfo>(
                  formKey: formKey,
                  fieldName: fieldName,
                  builder: (field) => Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SujudPhoneField(
                        formKey: formKey,
                        fieldName: _ContactInfoFormFieldName.phone.name,
                        initialValue:
                            values[_ContactInfoFormFieldName.phone.name],
                        isRequired: false,
                        onChanged: (value) => _didChange(
                          field,
                          fieldName: _ContactInfoFormFieldName.phone.name,
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
                        fieldName: _ContactInfoFormFieldName.website.name,
                        initialValue:
                            values[_ContactInfoFormFieldName.website.name],
                        onChanged: (value) => _didChange(
                          field,
                          fieldName: _ContactInfoFormFieldName.website.name,
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
                              items,
                            ),
                            icon: SujudIcon.add(),
                          ),
                        ],
                      ),
                      if (items.contains(_SocialMediaFormFieldName.facebook))
                        SujudTextField.social(
                          context,
                          formKey: formKey,
                          fieldName: _SocialMediaFormFieldName.facebook.name,
                          socialIcon: SujudIcon.facebook(),
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
                          socialIcon: SujudIcon.instagram(),
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
                          socialIcon: SujudIcon.twitter(),
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
                          socialIcon: SujudIcon.youtube(),
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
                );
              }),
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
          ...<DropdownItem>[
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
          ].map<Widget>(
            (item) => ListTile(
              title: Text(item.text),
              onTap: () {
                _selectedSocialsCubit.add(item.value);
                Navigator.of(context).pop();
              },
            ),
          ),
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
              socialMedia: values['socialMedia'] != null
                  ? SocialMedia.fromJson(
                      values['socialMedia'],
                    )
                  : null,
            ),
    );
  }
}

enum _ContactInfoFormFieldName {
  phone,
  email,
  website,
}

enum _SocialMediaFormFieldName {
  facebook,
  instagram,
  twitter,
  youtube,
}
