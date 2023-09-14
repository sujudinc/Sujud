// 🎯 Dart imports:
import 'dart:convert';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:collection/collection.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/configs/configs.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/widgets/widgets.dart';

class MosqueHoursField implements MosqueFormField<Hours?> {
  @override
  Widget buildFormField(
    BuildContext context, {
    required GlobalKey<FormBuilderState> formKey,
    String? initialValue,
    ValueChanged<Hours?>? onChanged,
  }) {
    final i18n = context.i18n;
    final theme = context.theme;
    final values =
        initialValue != null ? jsonDecode(initialValue) : <String, dynamic>{};

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          i18n.headingMosqueHours,
          style: theme.textTheme.titleLarge,
        ),
        const SizedBox(height: kHeadingGap),
        Text(
          i18n.subheadingMosqueHours,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: kContentGap),
        SujudMultiFieldBuilder<Hours>(
          formKey: formKey,
          fieldName: fieldName,
          builder: (field) => Column(
            children: DayType.values
                .map<Widget>(
                  (day) => _buildDayHoursField(
                    context,
                    dayType: day,
                    formKey: formKey,
                    values: values,
                    onChanged: (value) => _onChangeDay(
                      field,
                      dayType: day,
                      values: values,
                      value: value,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  @override
  String get fieldName => 'MosqueFormFieldName.hours.name';

  Widget _buildDayHoursField(
    BuildContext context, {
    required DayType dayType,
    required GlobalKey<FormBuilderState> formKey,
    required Map<String, dynamic> values,
    required ValueChanged<String?> onChanged,
  }) {
    final i18n = context.i18n;
    final day = dayType.name.toLowerCase();
    final dayValue = values[day] ?? <String, dynamic>{};
    final List<Map<String, dynamic>> operatingHours =
        dayValue['operatingHours'] != null
            ? List<Map<String, dynamic>>.from(dayValue['operatingHours'])
            : <Map<String, dynamic>>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(day.capitalise),
            ),
            IconButton(
              icon: SujudIcon.add(),
              onPressed: () => _addNewHoursEntry(
                dayType,
                values,
                onChanged,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5.0),
        Column(
          children: <Widget>[
            ...operatingHours.mapIndexed(
              (index, hour) {
                final open = hour['open'] != null && hour['open'].isNotEmpty
                    ? DateTime.parse(hour['open'])
                    : null;
                final close = hour['close'] != null && hour['close'].isNotEmpty
                    ? DateTime.parse(hour['close'])
                    : null;

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: SujudDateTimeField(
                        formKey: formKey,
                        fieldName: '$day.$index.open',
                        inputType: InputType.time,
                        labelText: i18n.labelOpenTime,
                        initialValue: open,
                        onChanged: (time) => _onChangedTime(
                          values: values,
                          day: day,
                          index: index,
                          moment: 'open',
                          onChanged: onChanged,
                          time: time,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: SujudDateTimeField(
                        formKey: formKey,
                        fieldName: '$day.$index.close',
                        inputType: InputType.time,
                        labelText: i18n.labelCloseTime,
                        initialValue: close,
                        onChanged: (time) => _onChangedTime(
                          values: values,
                          day: day,
                          index: index,
                          moment: 'close',
                          onChanged: onChanged,
                          time: time,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: SujudIcon.trash(),
                      onPressed: () => _removeHoursEntry(
                        values: values,
                        day: day,
                        index: index,
                        onChanged: onChanged,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
        const SizedBox(height: kContentGap),
      ],
    );
  }

  void _onChangeDay(
    FormFieldState<Hours> field, {
    required DayType dayType,
    required Map<String, dynamic> values,
    String? value,
  }) {
    if (value != null && value.isNotEmpty) {
      final hours = List<Map<String, dynamic>>.from(
        values[dayType.name.toLowerCase()]['operatingHours'],
      );

      values[dayType.name.toLowerCase()] = {
        'type': dayType.name,
        'operatingHours': hours,
      };
    } else {
      values.remove(dayType.name.toLowerCase());
    }

    final monday = values['monday'] as Map<String, dynamic>?;
    final tuesday = values['tuesday'] as Map<String, dynamic>?;
    final wednesday = values['wednesday'] as Map<String, dynamic>?;
    final thursday = values['thursday'] as Map<String, dynamic>?;
    final friday = values['friday'] as Map<String, dynamic>?;
    final saturday = values['saturday'] as Map<String, dynamic>?;
    final sunday = values['sunday'] as Map<String, dynamic>?;

    field.didChange(
      values.isEmpty
          ? null
          : Hours.fromJson(values).copyWith(
              monday: monday != null
                  ? Day.fromJson({
                      'type': DayType.MONDAY.name,
                      'operatingHours': [
                        {
                          'serializedData': {
                            'open': monday['operatingHours'][0]['open'],
                            'close': monday['operatingHours'][0]['close'],
                          }
                        },
                      ]
                    })
                  : null,
              tuesday: tuesday != null ? Day.fromJson(tuesday) : null,
              wednesday: wednesday != null ? Day.fromJson(wednesday) : null,
              thursday: thursday != null ? Day.fromJson(thursday) : null,
              friday: friday != null ? Day.fromJson(friday) : null,
              saturday: saturday != null ? Day.fromJson(saturday) : null,
              sunday: sunday != null ? Day.fromJson(sunday) : null,
            ),
    );
  }

  void _onChangedTime({
    required Map<String, dynamic> values,
    required String day,
    required int index,
    required String moment,
    required ValueChanged<String?> onChanged,
    DateTime? time,
  }) {
    final hours = values[day] as Map<String, dynamic>;
    final operatingHours = List<Map<String, dynamic>>.from(
      hours['operatingHours'],
    );

    operatingHours[index][moment] = time?.toIso8601String();
    hours['operatingHours'] = operatingHours;
    values[day] = hours;

    onChanged(jsonEncode(values));
  }

  void _addNewHoursEntry(
    DayType dayType,
    Map<String, dynamic> values,
    ValueChanged<String?> onChanged,
  ) {
    final day = dayType.name.toLowerCase();
    final hours = (values[day] as Map<String, dynamic>?) ??
        {
          'type': dayType.name,
          'operatingHours': <Map<String, dynamic>>[],
        };

    hours['operatingHours'] = List<Map<String, dynamic>>.from(
      hours['operatingHours'],
    )..add({
        'open': null,
        'close': null,
      });

    values[day] = hours;
    onChanged(jsonEncode(values));
  }

  void _removeHoursEntry({
    required Map<String, dynamic> values,
    required String day,
    required int index,
    required ValueChanged<String?> onChanged,
  }) {
    final hours = values[day] as Map<String, dynamic>? ?? <String, dynamic>{};

    hours['operatingHours'] = List<Map<String, dynamic>>.from(
      hours['operatingHours'],
    )..removeAt(index);

    values[day] = hours;
    onChanged(jsonEncode(values));
  }
}
