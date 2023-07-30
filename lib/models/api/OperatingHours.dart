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


/** This is an auto generated class representing the OperatingHours type in your schema. */
class OperatingHours {
  final amplify_core.TemporalTime? _open;
  final amplify_core.TemporalTime? _close;

  amplify_core.TemporalTime get open {
    try {
      return _open!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalTime get close {
    try {
      return _close!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const OperatingHours._internal({required open, required close}): _open = open, _close = close;
  
  factory OperatingHours({required amplify_core.TemporalTime open, required amplify_core.TemporalTime close}) {
    return OperatingHours._internal(
      open: open,
      close: close);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperatingHours &&
      _open == other._open &&
      _close == other._close;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("OperatingHours {");
    buffer.write("open=" + (_open != null ? _open!.format() : "null") + ", ");
    buffer.write("close=" + (_close != null ? _close!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  OperatingHours copyWith({amplify_core.TemporalTime? open, amplify_core.TemporalTime? close}) {
    return OperatingHours._internal(
      open: open ?? this.open,
      close: close ?? this.close);
  }
  
  OperatingHours copyWithModelFieldValues({
    ModelFieldValue<amplify_core.TemporalTime>? open,
    ModelFieldValue<amplify_core.TemporalTime>? close
  }) {
    return OperatingHours._internal(
      open: open == null ? this.open : open.value,
      close: close == null ? this.close : close.value
    );
  }
  
  OperatingHours.fromJson(Map<String, dynamic> json)  
    : _open = json['open'] != null ? amplify_core.TemporalTime.fromString(json['open']) : null,
      _close = json['close'] != null ? amplify_core.TemporalTime.fromString(json['close']) : null;
  
  Map<String, dynamic> toJson() => {
    'open': _open?.format(), 'close': _close?.format()
  };
  
  Map<String, Object?> toMap() => {
    'open': _open,
    'close': _close
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "OperatingHours";
    modelSchemaDefinition.pluralName = "OperatingHours";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'open',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.time)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'close',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.time)
    ));
  });
}