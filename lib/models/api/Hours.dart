/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the Hours type in your schema. */
class Hours {
  final Day? _monday;
  final Day? _tuesday;
  final Day? _wednesday;
  final Day? _thursday;
  final Day? _friday;
  final Day? _saturday;
  final Day? _sunday;

  Day? get monday {
    return _monday;
  }
  
  Day? get tuesday {
    return _tuesday;
  }
  
  Day? get wednesday {
    return _wednesday;
  }
  
  Day? get thursday {
    return _thursday;
  }
  
  Day? get friday {
    return _friday;
  }
  
  Day? get saturday {
    return _saturday;
  }
  
  Day? get sunday {
    return _sunday;
  }
  
  const Hours._internal({monday, tuesday, wednesday, thursday, friday, saturday, sunday}): _monday = monday, _tuesday = tuesday, _wednesday = wednesday, _thursday = thursday, _friday = friday, _saturday = saturday, _sunday = sunday;
  
  factory Hours({Day? monday, Day? tuesday, Day? wednesday, Day? thursday, Day? friday, Day? saturday, Day? sunday}) {
    return Hours._internal(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hours &&
      _monday == other._monday &&
      _tuesday == other._tuesday &&
      _wednesday == other._wednesday &&
      _thursday == other._thursday &&
      _friday == other._friday &&
      _saturday == other._saturday &&
      _sunday == other._sunday;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Hours {");
    buffer.write("monday=" + (_monday != null ? _monday!.toString() : "null") + ", ");
    buffer.write("tuesday=" + (_tuesday != null ? _tuesday!.toString() : "null") + ", ");
    buffer.write("wednesday=" + (_wednesday != null ? _wednesday!.toString() : "null") + ", ");
    buffer.write("thursday=" + (_thursday != null ? _thursday!.toString() : "null") + ", ");
    buffer.write("friday=" + (_friday != null ? _friday!.toString() : "null") + ", ");
    buffer.write("saturday=" + (_saturday != null ? _saturday!.toString() : "null") + ", ");
    buffer.write("sunday=" + (_sunday != null ? _sunday!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Hours copyWith({Day? monday, Day? tuesday, Day? wednesday, Day? thursday, Day? friday, Day? saturday, Day? sunday}) {
    return Hours._internal(
      monday: monday ?? this.monday,
      tuesday: tuesday ?? this.tuesday,
      wednesday: wednesday ?? this.wednesday,
      thursday: thursday ?? this.thursday,
      friday: friday ?? this.friday,
      saturday: saturday ?? this.saturday,
      sunday: sunday ?? this.sunday);
  }
  
  Hours copyWithModelFieldValues({
    ModelFieldValue<Day?>? monday,
    ModelFieldValue<Day?>? tuesday,
    ModelFieldValue<Day?>? wednesday,
    ModelFieldValue<Day?>? thursday,
    ModelFieldValue<Day?>? friday,
    ModelFieldValue<Day?>? saturday,
    ModelFieldValue<Day?>? sunday
  }) {
    return Hours._internal(
      monday: monday == null ? this.monday : monday.value,
      tuesday: tuesday == null ? this.tuesday : tuesday.value,
      wednesday: wednesday == null ? this.wednesday : wednesday.value,
      thursday: thursday == null ? this.thursday : thursday.value,
      friday: friday == null ? this.friday : friday.value,
      saturday: saturday == null ? this.saturday : saturday.value,
      sunday: sunday == null ? this.sunday : sunday.value
    );
  }
  
  Hours.fromJson(Map<String, dynamic> json)  
    : _monday = json['monday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['monday']['serializedData']))
        : null,
      _tuesday = json['tuesday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['tuesday']['serializedData']))
        : null,
      _wednesday = json['wednesday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['wednesday']['serializedData']))
        : null,
      _thursday = json['thursday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['thursday']['serializedData']))
        : null,
      _friday = json['friday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['friday']['serializedData']))
        : null,
      _saturday = json['saturday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['saturday']['serializedData']))
        : null,
      _sunday = json['sunday']?['serializedData'] != null
        ? Day.fromJson(new Map<String, dynamic>.from(json['sunday']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'monday': _monday?.toJson(), 'tuesday': _tuesday?.toJson(), 'wednesday': _wednesday?.toJson(), 'thursday': _thursday?.toJson(), 'friday': _friday?.toJson(), 'saturday': _saturday?.toJson(), 'sunday': _sunday?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'monday': _monday,
    'tuesday': _tuesday,
    'wednesday': _wednesday,
    'thursday': _thursday,
    'friday': _friday,
    'saturday': _saturday,
    'sunday': _sunday
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Hours";
    modelSchemaDefinition.pluralName = "Hours";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'monday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'tuesday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'wednesday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'thursday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'friday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'saturday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'sunday',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Day')
    ));
  });
}