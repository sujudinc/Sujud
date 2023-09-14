// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';

abstract class MosqueFormField<T> {
  String get fieldName;
  Widget buildFormField(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    String? initialValue,
    ValueChanged<T>? onChanged,
  });
}

enum MosqueFormFieldName {
  name,
  description,
  images,
  location,
  // hours,
  contactInfo,
}
