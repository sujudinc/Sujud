import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';

class CreateMosqueFieldPage<T> extends StatefulWidget {
  const CreateMosqueFieldPage({super.key});

  @override
  State<CreateMosqueFieldPage> createState() =>
      _CreateMosqueFieldPageState<T>();
}

class _CreateMosqueFieldPageState<T> extends State<CreateMosqueFieldPage> {
  final _form = GetIt.instance.get<FormUtilityAbstract>(
    param1: GlobalKey<FormBuilderState>(),
  );
  final _navigation = GetIt.instance.get<NavigationUtilityAbstract>();

  @override
  Widget build(BuildContext context) {
    final i18n = context.i18n;
    final queryParameters = _navigation.currentPath.queryParameters!;
    final fieldName = queryParameters['fieldName'];
    final initialValue = queryParameters['initialValue'];

    return PAScaffold(
      leading: IconButton(
        onPressed: _navigation.back,
        icon: SujudIcon.close(),
      ),
      kids: Kids(
        child: ListView(
          children: <Widget>[
            FormBuilder(
              key: _form.formKey,
              child: Column(
                children: <Widget>[
                  _getFormFieldForName(
                    MosqueFormFieldName.values.firstWhere(
                      (field) => field.name == fieldName,
                    ),
                  ).buildFormField(
                    context,
                    formKey: _form.formKey,
                    initialValue: initialValue,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            SujudButton(
              text: i18n.buttonSave,
              outlineMode: false,
              onTap: () async {
                print('--------> fieldnames');
                print(_form.fieldValues);

                if (!_form.saveAndValidate()) {
                  return;
                }

                // _navigation.back(
                //   data: _form.getValue(fieldName!),
                // );
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
      case MosqueFormFieldName.hours:
        return MosqueHoursField();
      case MosqueFormFieldName.contactInfo:
        return MosqueContactInfoField();
      default:
        throw ArgumentError('Unknown form field: $fieldName');
    }
  }
}
