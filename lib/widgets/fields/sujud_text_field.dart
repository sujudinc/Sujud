// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sujud/abstracts/abstracts.dart';

// 🌎 Project imports:
import 'package:sujud/extensions/extensions.dart';

class SujudTextField extends StatelessWidget implements SujudFormFieldAbstract {
  const SujudTextField({
    required this.formKey,
    required this.fieldName,
    this.prefix,
    this.suffix,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.hintText,
    this.icon,
    this.iconColor,
    this.validator,
    this.valueTransformer,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.textCapitalization = TextCapitalization.none,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.autofillHints,
    this.textStyle,
    this.textInputAction,
    this.maxLengthEnforcement,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.width,
    this.readOnly = false,
    this.enabled = true,
    this.obscureText = false,
    this.enableInteractiveSelection = true,
    this.autoFocus = false,
    this.autoCorrect = true,
    this.expands = false,
    this.showCursor = true,
    this.enableSuggestions = false,
    this.onChanged,
    this.onSubmitted,
    this.onSaved,
    this.onReset,
    this.onEditingComplete,
    this.onTap,
    super.key,
  })  : assert(
          initialValue == null || controller == null,
          'Must pass controller or initialValue',
        ),
        assert(
          minLines == null || minLines > 0,
          'minLines must be null or greater than 0',
        ),
        assert(
          maxLines == null || maxLines > 0,
          'maxLines must be null or greater than 0',
        ),
        assert(
          !expands || (minLines == null && maxLines == null),
          'minLines and maxLines must be null if expands is true',
        ),
        assert(
          !obscureText || maxLines == 1,
          'Obscured fields cannot be multiline.',
        ),
        assert(
          maxLength == null || maxLength > 0,
          'maxLength must be null or greater than 0',
        );

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? hintText;
  final Widget? icon;
  final Color? iconColor;
  final FormFieldValidator<String>? validator;
  final ValueTransformer<String?>? valueTransformer;
  final AutovalidateMode autoValidateMode;
  final TextCapitalization textCapitalization;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final List<String>? autofillHints;
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double? width;
  final bool readOnly;
  final bool enabled;
  final bool obscureText;
  final bool enableInteractiveSelection;
  final bool autoFocus;
  final bool autoCorrect;
  final bool expands;
  final bool showCursor;
  final bool enableSuggestions;
  final ValueChanged<String?>? onChanged;
  final ValueChanged<String?>? onSubmitted;
  final FormFieldSetter<String>? onSaved;
  final VoidCallback? onReset;
  final VoidCallback? onEditingComplete;
  final GestureTapCallback? onTap;

  factory SujudTextField.phone(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String countryCodeFieldName,
    required String phoneNumberFieldName,
    String? initialValue,
    bool isRequired = true,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    final countryCode = initialValue?.split(' ')[0];
    final phoneNumber = initialValue?.split(' ')[1];

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: phoneNumberFieldName,
      prefix: FormBuilderFieldDecoration<String>(
        initialValue: countryCode ??
            const CountryCode(
              name: 'United Kingdom',
              code: 'UK',
              dialCode: '+44',
            ).dialCode,
        name: countryCodeFieldName,
        validator: FormBuilderValidators.compose([
          if (isRequired)
            FormBuilderValidators.required(
              errorText: i18n.errorFieldRequired,
            ),
        ]),
        builder: (field) => GestureDetector(
          onTap: () async {
            final code = await const FlCountryCodePicker().showPicker(
              context: context,
              scrollToDeviceLocale: true,
            );

            field.didChange(code?.dialCode);
          },
          child: Text(
            field.value ?? '+44',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        decoration: const InputDecoration(
          hintStyle: TextStyle(),
          errorStyle: TextStyle(
            fontSize: 0.0,
            height: 0.0,
          ),
          errorText: '',
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
      ),
      initialValue: phoneNumber,
      hintText: i18n.hintPhoneNumber,
      keyboardType: TextInputType.phone,
      autofillHints: const <String>[
        AutofillHints.telephoneNumber,
        AutofillHints.telephoneNumberDevice,
      ],
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        if (isRequired)
          FormBuilderValidators.required(
            errorText: i18n.errorFieldRequired,
          ),
        FormBuilderValidators.numeric(errorText: i18n.errorFieldNumeric),
        FormBuilderValidators.match(
          r'^\d{5,15}$',
          errorText: i18n.errorFieldPhoneNumber,
        )
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.email(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    bool isRequired = true,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: i18n.hintEmail,
      autofillHints: const <String>[
        AutofillHints.email,
      ],
      keyboardType: TextInputType.emailAddress,
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        if (isRequired)
          FormBuilderValidators.required(
            errorText: i18n.errorFieldRequired,
          ),
        FormBuilderValidators.email(errorText: i18n.errorFieldEmail),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.url(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: i18n.hintUrl,
      autofillHints: const <String>[
        AutofillHints.url,
      ],
      keyboardType: TextInputType.url,
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.url(errorText: i18n.errorFieldUrl),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.social(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    required Icon socialIcon,
    required String hintText,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      prefix: socialIcon,
      initialValue: initialValue,
      hintText: hintText,
      autofillHints: const <String>[
        AutofillHints.url,
      ],
      keyboardType: TextInputType.url,
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.url(errorText: i18n.errorFieldUrl),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.password(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: i18n.hintPassword,
      keyboardType: TextInputType.text,
      autofillHints: const <String>[
        AutofillHints.password,
      ],
      obscureText: true,
      maxLines: 1,
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: i18n.errorFieldRequired),
        FormBuilderValidators.minLength(
          8,
          errorText: i18n.errorFieldMinLength(8),
        ),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.name(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    NameFieldType type = NameFieldType.firstName,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: type == NameFieldType.firstName
          ? i18n.hintFirstName
          : i18n.hintLastName,
      keyboardType: TextInputType.name,
      autofillHints: <String>[
        type == NameFieldType.firstName
            ? AutofillHints.givenName
            : AutofillHints.familyName,
      ],
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: i18n.errorFieldRequired),
        FormBuilderValidators.minLength(
          2,
          errorText: i18n.errorFieldMinLength(2),
        ),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.confirmationCode(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: i18n.hintConfirmationCode,
      keyboardType: TextInputType.number,
      autofillHints: const <String>[
        AutofillHints.oneTimeCode,
      ],
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: i18n.errorFieldRequired),
        FormBuilderValidators.numeric(errorText: i18n.errorFieldNumeric),
        FormBuilderValidators.equalLength(
          6,
          errorText: i18n.errorFieldLength(6),
        ),
      ]),
      onChanged: onChanged,
    );
  }

  factory SujudTextField.description(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    required String hintText,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: hintText,
      keyboardType: TextInputType.text,
      enableSuggestions: true,
      maxLines: 5,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: i18n.errorFieldRequired),
        FormBuilderValidators.minLength(
          50,
          errorText: i18n.errorFieldMinLength(50),
        ),
      ]),
      onChanged: onChanged,
    );
  }

  String? get _errorText => formKey.currentState?.fields[fieldName]?.errorText;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        decoration: _errorText == null
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.black45,
                  width: 1.5,
                ),
              )
            : BoxDecoration(
                color: Colors.red.shade200,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.red,
                  width: 1.5,
                ),
              ),
        constraints: const BoxConstraints(
          minHeight: 55.0,
        ),
        margin: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            prefix ?? const SizedBox(),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: prefix != null ? 10.0 : 0.0,
                  right: suffix != null ? 10.0 : 0.0,
                ),
                child: FormBuilderTextField(
                  key: key,
                  name: fieldName,
                  validator: validator,
                  initialValue: initialValue,
                  readOnly: readOnly,
                  decoration: InputDecoration(
                    icon: icon,
                    iconColor: iconColor,
                    hintText: hintText,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                  onChanged: onChanged,
                  valueTransformer: valueTransformer,
                  enabled: enabled,
                  onSaved: onSaved,
                  autovalidateMode: autoValidateMode,
                  onReset: onReset,
                  focusNode: focusNode,
                  maxLines: maxLines,
                  obscureText: obscureText,
                  textCapitalization: textCapitalization,
                  enableInteractiveSelection: enableInteractiveSelection,
                  maxLengthEnforcement: maxLengthEnforcement,
                  textAlign: textAlign,
                  autofocus: autoFocus,
                  autocorrect: autoCorrect,
                  keyboardType: keyboardType,
                  style: textStyle,
                  controller: controller,
                  textInputAction: textInputAction,
                  maxLength: maxLength,
                  onEditingComplete: onEditingComplete,
                  onSubmitted: onSubmitted,
                  expands: expands,
                  minLines: minLines,
                  showCursor: showCursor,
                  onTap: onTap,
                  enableSuggestions: enableSuggestions,
                  autofillHints: autofillHints,
                ),
              ),
            ),
            suffix ?? const SizedBox(),
          ],
        ),
      );
}

enum NameFieldType {
  firstName,
  lastName,
}
