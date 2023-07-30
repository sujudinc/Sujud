// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sujud/abstracts/abstracts.dart';

class SujudMultiFieldBuilder<T> extends StatelessWidget
    implements SujudFormFieldAbstract {
  const SujudMultiFieldBuilder({
    required this.formKey,
    required this.fieldName,
    required this.builder,
    this.focusNode,
    this.initialValue,
    this.enabled = true,
    this.validator,
    this.valueTransformer,
    this.onChanged,
    this.onReset,
    super.key,
  });

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final FormFieldBuilder<T> builder;
  final FocusNode? focusNode;
  final T? initialValue;
  final bool enabled;
  final FormFieldValidator<T>? validator;
  final ValueTransformer<T?>? valueTransformer;
  final ValueChanged<T?>? onChanged;
  final VoidCallback? onReset;

  @override
  Widget build(BuildContext context) => FormBuilderFieldDecoration<T>(
        name: fieldName,
        builder: builder,
        initialValue: initialValue,
        enabled: enabled,
        validator: validator,
        valueTransformer: valueTransformer,
        onChanged: onChanged,
        onReset: onReset,
      );
}
