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


/** This is an auto generated class representing the PrayerTime type in your schema. */
class PrayerTime {
  final PrayerType? _type;
  final amplify_core.TemporalDateTime? _athan;
  final amplify_core.TemporalDateTime? _iqamah;

  PrayerType get type {
    try {
      return _type!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get athan {
    try {
      return _athan!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get iqamah {
    try {
      return _iqamah!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const PrayerTime._internal({required type, required athan, required iqamah}): _type = type, _athan = athan, _iqamah = iqamah;
  
  factory PrayerTime({required PrayerType type, required amplify_core.TemporalDateTime athan, required amplify_core.TemporalDateTime iqamah}) {
    return PrayerTime._internal(
      type: type,
      athan: athan,
      iqamah: iqamah);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrayerTime &&
      _type == other._type &&
      _athan == other._athan &&
      _iqamah == other._iqamah;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PrayerTime {");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("athan=" + (_athan != null ? _athan!.format() : "null") + ", ");
    buffer.write("iqamah=" + (_iqamah != null ? _iqamah!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PrayerTime copyWith({PrayerType? type, amplify_core.TemporalDateTime? athan, amplify_core.TemporalDateTime? iqamah}) {
    return PrayerTime._internal(
      type: type ?? this.type,
      athan: athan ?? this.athan,
      iqamah: iqamah ?? this.iqamah);
  }
  
  PrayerTime copyWithModelFieldValues({
    ModelFieldValue<PrayerType>? type,
    ModelFieldValue<amplify_core.TemporalDateTime>? athan,
    ModelFieldValue<amplify_core.TemporalDateTime>? iqamah
  }) {
    return PrayerTime._internal(
      type: type == null ? this.type : type.value,
      athan: athan == null ? this.athan : athan.value,
      iqamah: iqamah == null ? this.iqamah : iqamah.value
    );
  }
  
  PrayerTime.fromJson(Map<String, dynamic> json)  
    : _type = amplify_core.enumFromString<PrayerType>(json['type'], PrayerType.values),
      _athan = json['athan'] != null ? amplify_core.TemporalDateTime.fromString(json['athan']) : null,
      _iqamah = json['iqamah'] != null ? amplify_core.TemporalDateTime.fromString(json['iqamah']) : null;
  
  Map<String, dynamic> toJson() => {
    'type': amplify_core.enumToString(_type), 'athan': _athan?.format(), 'iqamah': _iqamah?.format()
  };
  
  Map<String, Object?> toMap() => {
    'type': _type,
    'athan': _athan,
    'iqamah': _iqamah
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PrayerTime";
    modelSchemaDefinition.pluralName = "PrayerTimes";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'type',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'athan',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'iqamah',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}