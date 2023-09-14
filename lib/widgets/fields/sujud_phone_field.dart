import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/blocs/blocs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/fields/fields.dart';

class SujudPhoneField extends StatefulWidget implements SujudFormFieldAbstract {
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
  State<SujudPhoneField> createState() => _SujudPhoneFieldState();
}

class _SujudPhoneFieldState extends State<SujudPhoneField> {
  String? _initialValue;
  String? _countryCode;
  String? _phoneNumber;
  late final ValueCubit<_PhoneNumberFormatter> _formatterValueCubit;

  @override
  void initState() {
    super.initState();

    _initialValue = widget.initialValue;
    _countryCode = _initialValue?.contains(' ') == true
        ? _initialValue?.split(' ')[0]
        : '+44';
    _phoneNumber = _initialValue?.contains(' ') == true
        ? _initialValue?.split(' ')[1]
        : '';
    _formatterValueCubit = ValueCubit<_PhoneNumberFormatter>(
      _PhoneNumberFormatter(
        isoCode: codes.firstWhere(
              (element) => element['dial_code'] == _countryCode,
            )['code'] ??
            '+44',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return SujudMultiFieldBuilder<String>(
      formKey: widget.formKey,
      fieldName: widget.fieldName,
      onChanged: widget.onChanged,
      builder: (field) => BlocProvider<ValueCubit<_PhoneNumberFormatter>>(
        create: (_) => _formatterValueCubit,
        child: BlocBuilder<ValueCubit<_PhoneNumberFormatter>,
                ValueState<_PhoneNumberFormatter>>(
            bloc: _formatterValueCubit,
            builder: (context, state) => SujudTextField(
                  formKey: GlobalKey<FormBuilderState>(),
                  fieldName: 'phoneNumber',
                  prefix: GestureDetector(
                    onTap: () async {
                      final value =
                          await const FlCountryCodePicker().showPicker(
                        context: context,
                        scrollToDeviceLocale: true,
                      );

                      if (value != null) {
                        _formatterValueCubit.value = _PhoneNumberFormatter(
                          isoCode: value.code,
                        );
                        _countryCode = value.dialCode;
                        field.didChange('${_countryCode!} $_phoneNumber');
                      }
                    },
                    child: Text(
                      _countryCode!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  initialValue: _phoneNumber,
                  hintText: i18n.hintPhoneNumber,
                  keyboardType: TextInputType.phone,
                  autofillHints: const <String>[
                    AutofillHints.telephoneNumber,
                    AutofillHints.telephoneNumberDevice,
                  ],
                  enableSuggestions: true,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly,
                    state.value,
                  ],
                  validator: FormBuilderValidators.compose([
                    if (widget.isRequired)
                      FormBuilderValidators.required(
                        errorText: i18n.errorFieldRequired,
                      ),
                    FormBuilderValidators.match(
                      r'^(?:\d\s?-?){5,15}\d$',
                      errorText: i18n.errorFieldPhoneNumber,
                    )
                  ]),
                  onChanged: (value) async => field.didChange(
                    '$_countryCode '
                    '$value',
                  ),
                )),
      ),
    );
  }
}

class _PhoneNumberFormatter extends TextInputFormatter {
  _PhoneNumberFormatter({
    required this.isoCode,
  });

  final String isoCode;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newString = _formatPhoneNumber(newValue.text, isoCode);

    return newValue.copyWith(
      text: newString,
      selection: TextSelection.collapsed(offset: newString.length),
    );
  }

  String _formatPhoneNumber(String phone, String isoCode) => PhoneNumber.parse(
        phone,
        destinationCountry: IsoCode.values.firstWhere(
          (code) => code.name == isoCode,
        ),
      ).getFormattedNsn(
        isoCode: IsoCode.values.firstWhere(
          (code) => code.name == isoCode,
        ),
      );
}
