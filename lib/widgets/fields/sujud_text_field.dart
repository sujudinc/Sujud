// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/shared/shared.dart';

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
    this.inputFormatters,
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
  final List<TextInputFormatter>? inputFormatters;
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
    required Widget socialIcon,
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

  factory SujudTextField.comment(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    required String fieldName,
    String? initialValue,
    ValueChanged<String?>? onChanged,
    VoidCallback? onPressed,
    Key? key,
  }) {
    final i18n = context.i18n;

    return SujudTextField(
      key: key,
      formKey: formKey,
      fieldName: fieldName,
      initialValue: initialValue,
      hintText: i18n.hintComment,
      keyboardType: TextInputType.text,
      enableSuggestions: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(errorText: i18n.errorFieldRequired),
        FormBuilderValidators.minLength(
          2,
          errorText: i18n.errorFieldMinLength(2),
        ),
      ]),
      suffix: IconButton(
        icon: Container(
          height: 75.0,
          width: 75.0,
          decoration: const BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SujudIcon.send(
              size: 15.0,
            ),
          ),
        ),
        onPressed: onPressed,
      ),
      onChanged: onChanged,
    );
  }

  String? get _errorText => formKey.currentState?.fields[fieldName]?.errorText;

  @override
  Widget build(BuildContext context) => Container(
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
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            prefix ?? const SizedBox(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                  inputFormatters: inputFormatters,
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
