// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';

// 🌎 Project imports:
import 'package:sujud/configs/configs.dart';

class SujudDateTimeField extends StatelessWidget {
  const SujudDateTimeField({
    required this.formKey,
    required this.fieldName,
    this.inputType = InputType.date,
    this.prefix,
    this.suffix,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.icon,
    this.iconColor,
    this.inputFormatters,
    this.validator,
    this.valueTransformer,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.datetime,
    this.textStyle,
    this.textInputAction,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.width,
    this.enabled = true,
    this.obscureText = false,
    this.enableInteractiveSelection = true,
    this.autoFocus = false,
    this.autoCorrect = true,
    this.expands = false,
    this.showCursor = true,
    this.onChanged,
    this.onSaved,
    this.onReset,
    this.onEditingComplete,
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
  final InputType inputType;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final DateTime? initialValue;
  final String? labelText;
  final String? hintText;
  final Widget? icon;
  final Color? iconColor;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<DateTime>? validator;
  final ValueTransformer<DateTime?>? valueTransformer;
  final AutovalidateMode autoValidateMode;
  final TextAlign textAlign;
  final TextInputType keyboardType;
  final TextStyle? textStyle;
  final TextInputAction? textInputAction;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final double? width;
  final bool enabled;
  final bool obscureText;
  final bool enableInteractiveSelection;
  final bool autoFocus;
  final bool autoCorrect;
  final bool expands;
  final bool showCursor;
  final ValueChanged<DateTime?>? onChanged;
  final FormFieldSetter<DateTime>? onSaved;
  final VoidCallback? onReset;
  final VoidCallback? onEditingComplete;

  String? get _errorText => formKey.currentState?.fields[fieldName]?.errorText;

  String get _dateFormat {
    switch (inputType) {
      case InputType.date:
        return kDateFormat;
      case InputType.time:
        return kTimeFormat;
      case InputType.both:
        return kDateTimeFormat;
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 5.0,
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
                child: FormBuilderDateTimePicker(
                  key: key,
                  name: fieldName,
                  inputType: inputType,
                  format: DateFormat(_dateFormat),
                  validator: validator,
                  initialValue: initialValue,
                  decoration: InputDecoration(
                    icon: icon,
                    iconColor: iconColor,
                    labelText: labelText,
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
                  obscureText: obscureText,
                  enableInteractiveSelection: enableInteractiveSelection,
                  textAlign: textAlign,
                  autofocus: autoFocus,
                  autocorrect: autoCorrect,
                  keyboardType: keyboardType,
                  style: textStyle,
                  controller: controller,
                  textInputAction: textInputAction,
                  maxLength: maxLength,
                  onEditingComplete: onEditingComplete,
                  expands: expands,
                  minLines: minLines,
                  showCursor: showCursor,
                ),
              ),
            ),
            suffix ?? const SizedBox(),
          ],
        ),
      );
}
