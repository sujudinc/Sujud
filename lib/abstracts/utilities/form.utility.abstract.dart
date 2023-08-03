// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

abstract class FormUtilityAbstract {
  GlobalKey<FormBuilderState> get formKey;
  Map<String, dynamic> get fieldValues;

  T? getValue<T>(String fieldName);
  T? getInstantValue<T>(String fieldName);

  bool isValidValue(String fieldName);
  bool saveAndValidate();

  void setValue({required String fieldName, Object? value});
  void invalidateField({required String fieldName, required String errorText});
  void reset();
}
