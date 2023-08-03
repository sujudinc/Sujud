import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/extensions/extensions.dart';
import 'package:sujud/widgets/widgets.dart';
import 'package:sujud/models/models.dart';

import 'package:sujud/configs/configs.dart';

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
                    fieldName: day.name,
                    formKey: formKey,
                    values: values,
                    onChanged: (value) => _didChangeDay(
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
  String get fieldName => MosqueFormFieldName.hours.name;

  Widget _buildDayHoursField(
    BuildContext context, {
    required DayType dayType,
    required String fieldName,
    required GlobalKey<FormBuilderState> formKey,
    required Map<String, dynamic> values,
    required ValueChanged<String?> onChanged,
  }) {
    final i18n = context.i18n;
    final dayValue = values[fieldName] ?? <String, dynamic>{};
    final List<Map<String, dynamic>> hoursValue =
        dayValue['operatingHours'] != null
            ? List<Map<String, dynamic>>.from(dayValue['operatingHours'])
            : <Map<String, dynamic>>[];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(dayType.name.capitalise),
        const SizedBox(height: 8),
        Column(
          children: hoursValue.map<Widget>(
            (hour) {
              final open = timeFromString(hour['open']);
              final close = timeFromString(hour['close']);

              return Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      initialValue: open?.toString() ?? '',
                      decoration: InputDecoration(
                        labelText: i18n.labelOpeningTime,
                      ),
                      onChanged: (value) => _updateHoursList(
                        dayType.name,
                        open: timeFromString(value),
                        close: close,
                        values: values,
                        onChanged: onChanged,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextFormField(
                      initialValue: close?.toString() ?? '',
                      decoration: InputDecoration(
                        labelText: i18n.labelClosingTime,
                      ),
                      onChanged: (value) => _updateHoursList(
                        dayType.name,
                        open: open,
                        close: timeFromString(value),
                        values: values,
                        onChanged: onChanged,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: SujudIcon.trash(),
                    onPressed: () => _removeHoursEntry(
                      dayType.name,
                      open: open,
                      close: close,
                      formKey: formKey,
                      values: values,
                      onChanged: onChanged,
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
        ElevatedButton(
          onPressed: () => _addNewHoursEntry(
            dayType.name,
            values,
            onChanged,
          ),
          child: Text(i18n.buttonAddHours),
        ),
        const SizedBox(height: kContentGap),
      ],
    );
  }

  void _didChangeDay(
    FormFieldState<Hours> field, {
    required DayType dayType,
    required Map<String, dynamic> values,
    String? value,
  }) {
    if (value != null && value.isNotEmpty) {
      final hours = List<Map<String, dynamic>>.from(
          values[dayType.name]['operatingHours'] ?? []);

      values[dayType.name] = {
        'type': dayType.name,
        'operatingHours': hours,
      };
    } else {
      values.remove(dayType.name);
    }

    field.didChange(values.isEmpty ? null : Hours.fromJson(values));
  }

  void _updateHoursList(
    String fieldName, {
    required TemporalTime? open,
    required TemporalTime? close,
    required Map<String, dynamic> values,
    required ValueChanged<String?> onChanged,
  }) {
    // final hours = List<Map<String, dynamic>>.from(
    //     values[fieldName] ?? <Map<String, dynamic>>[]);
    //
    // final updatedEntry = {
    //   'open': open?.name,
    //   'close': close?.name,
    // };
    //
    // final index = hours.indexWhere(
    //   (entry) =>
    //       entry['open'] == updatedEntry['open'] &&
    //       entry['close'] == updatedEntry['close'],
    // );
    //
    // if (index >= 0) {
    //   hours[index] = updatedEntry;
    // } else {
    //   hours.add(updatedEntry);
    // }
    //
    // values[fieldName] = jsonEncode(hours);
    // onChanged(jsonEncode(values));
  }

  void _addNewHoursEntry(
    String fieldName,
    Map<String, dynamic> values,
    ValueChanged<String?> onChanged,
  ) {
    final hours = (values[fieldName] as Map<String, dynamic>?) ??
        {
          'type': fieldName,
          'operatingHours': <Map<String, dynamic>>[],
        };

    final operatingHours = List<Map<String, dynamic>>.from(
      hours['operatingHours'],
    )..add({
        'open': '',
        'close': '',
      });

    hours['operatingHours'] = operatingHours;
    values[fieldName] = hours;

    onChanged(jsonEncode(values));
  }

  void _removeHoursEntry(
    String fieldName, {
    required TemporalTime? open,
    required TemporalTime? close,
    required GlobalKey<FormBuilderState> formKey,
    required Map<String, dynamic> values,
    required ValueChanged<String?> onChanged,
  }) {}

  // Helper method to convert TemporalTime from string
  TemporalTime? timeFromString(String? timeString) {
    if (timeString == null || timeString.isEmpty) {
      return null;
    }
    return TemporalTime.fromString(timeString);
  }

  // Helper method to convert TemporalTime to string
  String? timeToString(TemporalTime? time) {
    if (time == null) {
      return null;
    }
    return time.toString();
  }
}
