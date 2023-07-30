// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';

class FormUtility implements FormUtilityAbstract {
  FormUtility({GlobalKey<FormBuilderState>? formKey})
      : _formKey = formKey ?? GlobalKey<FormBuilderState>();

  final GlobalKey<FormBuilderState> _formKey;

  @override
  GlobalKey<FormBuilderState> get formKey => _formKey;

  @override
  Map<String, dynamic> get fieldValues {
    final values = _formKey.currentState?.value ?? <String, dynamic>{};

    return values;
  }

  @override
  T? getValue<T>(String fieldName) => _formKey.currentState?.value[fieldName];

  @override
  T? getInstantValue<T>(String fieldName) {
    final field = _formKey.currentState?.instantValue[fieldName];

    return field;
  }

  @override
  bool isValidValue(String fieldName) {
    final isValid = _formKey.currentState?.fields[fieldName]?.errorText == null;

    return isValid;
  }

  @override
  bool saveAndValidate() {
    if (_formKey.currentState == null) {
      return false;
    }

    return _formKey.currentState!.saveAndValidate();
  }

  @override
  void setValue({required String fieldName, Object? value}) {
    _formKey.currentState?.fields[fieldName]?.didChange(value);
  }

  @override
  void invalidateField({required String fieldName, required String errorText}) {
    _formKey.currentState?.fields[fieldName]?.invalidate(errorText);
  }

  @override
  void reset() => _formKey.currentState?.reset();
}
