// 🐦 Flutter imports:
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class CreateMosqueFieldPage<T> extends StatefulWidget {
  const CreateMosqueFieldPage({
    required this.fieldName,
    this.initialValue,
    super.key,
  });

  final String fieldName;
  final String? initialValue;

  @override
  State<CreateMosqueFieldPage> createState() =>
      _CreateMosqueFieldPageState<T>();
}

class _CreateMosqueFieldPageState<T> extends State<CreateMosqueFieldPage> {
  final _formUtility = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );
  final _navigationUtility = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;

    return PAScaffold(
      leading: IconButton(
        onPressed: _navigationUtility.back,
        icon: SujudIcon.close(),
      ),
      kids: Kids(
        child: ListView(
          children: <Widget>[
            FormBuilder(
              key: _formUtility.formKey,
              child: Column(
                children: <Widget>[
                  _getFormFieldForName(
                    MosqueFormFieldName.values.firstWhere(
                      (field) => field.name == widget.fieldName,
                    ),
                  ).buildFormField(
                    context,
                    formKey: _formUtility.formKey,
                    initialValue: widget.initialValue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            SujudButton(
              text: i18n.buttonSave,
              outlined: false,
              onTap: () async {
                if (!_formUtility.saveAndValidate()) {
                  return;
                }

                _navigationUtility.back(
                  data: _formUtility.getValue(widget.fieldName),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  MosqueFormField _getFormFieldForName(MosqueFormFieldName fieldName) {
    switch (fieldName) {
      case MosqueFormFieldName.name:
        return MosqueNameField();
      case MosqueFormFieldName.description:
        return MosqueDescriptionField();
      case MosqueFormFieldName.images:
        return MosqueImagesField();
      case MosqueFormFieldName.location:
        return MosqueLocationField();
      // case MosqueFormFieldName.hours:
      //   return MosqueHoursField();
      case MosqueFormFieldName.contactInfo:
        return MosqueContactInfoField();
      default:
        throw ArgumentError('Unknown form field: $fieldName');
    }
  }
}
