import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/fields/fields.dart';

class SujudPhoneField extends StatelessWidget
    implements SujudFormFieldAbstract {
  const SujudPhoneField({
    required this.formKey,
    required this.fieldName,
    this.focusNode,
    this.initialValue,
    this.isRequired = false,
    this.enabled = true,
    this.validator,
    this.valueTransformer,
    this.onChanged,
    this.onReset,
    super.key,
  });

  final GlobalKey<FormBuilderState> formKey;
  final String fieldName;
  final FocusNode? focusNode;
  final String? initialValue;
  final bool isRequired;
  final bool enabled;
  final FormFieldValidator<String>? validator;
  final ValueTransformer<String?>? valueTransformer;
  final ValueChanged<String?>? onChanged;
  final VoidCallback? onReset;

  @override
  Widget build(BuildContext context) => SujudMultiFieldBuilder<String?>(
        formKey: formKey,
        fieldName: fieldName,
        onChanged: onChanged,
        builder: (field) {
          final i18n = context.i18n;
          final countryCode = initialValue?.split(' ')[0];
          final phoneNumber = initialValue?.split(' ')[1];

          return SujudTextField(
            formKey: formKey,
            fieldName: 'phoneNumber',
            prefix: GestureDetector(
              onTap: () async {
                final value = await const FlCountryCodePicker().showPicker(
                  context: context,
                  scrollToDeviceLocale: true,
                );

                if (value != null) {
                  field.didChange('${value.dialCode} $phoneNumber');
                }
              },
              child: Text(
                countryCode ?? '+44',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
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
              FormBuilderValidators.numeric(
                errorText: i18n.errorFieldNumeric,
              ),
              FormBuilderValidators.match(
                r'^\d{5,15}$',
                errorText: i18n.errorFieldPhoneNumber,
              )
            ]),
            onChanged: (value) => field.didChange(
              countryCode != null ? '$countryCode $value' : value,
            ),
          );
        },
      );
}
