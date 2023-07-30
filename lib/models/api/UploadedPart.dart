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


/** This is an auto generated class representing the UploadedPart type in your schema. */
class UploadedPart {
  final int? _partNumber;
  final String? _eTag;
  final int? _size;

  int get partNumber {
    try {
      return _partNumber!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get eTag {
    try {
      return _eTag!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get size {
    try {
      return _size!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const UploadedPart._internal({required partNumber, required eTag, required size}): _partNumber = partNumber, _eTag = eTag, _size = size;
  
  factory UploadedPart({required int partNumber, required String eTag, required int size}) {
    return UploadedPart._internal(
      partNumber: partNumber,
      eTag: eTag,
      size: size);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadedPart &&
      _partNumber == other._partNumber &&
      _eTag == other._eTag &&
      _size == other._size;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UploadedPart {");
    buffer.write("partNumber=" + (_partNumber != null ? _partNumber!.toString() : "null") + ", ");
    buffer.write("eTag=" + "$_eTag" + ", ");
    buffer.write("size=" + (_size != null ? _size!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UploadedPart copyWith({int? partNumber, String? eTag, int? size}) {
    return UploadedPart._internal(
      partNumber: partNumber ?? this.partNumber,
      eTag: eTag ?? this.eTag,
      size: size ?? this.size);
  }
  
  UploadedPart copyWithModelFieldValues({
    ModelFieldValue<int>? partNumber,
    ModelFieldValue<String>? eTag,
    ModelFieldValue<int>? size
  }) {
    return UploadedPart._internal(
      partNumber: partNumber == null ? this.partNumber : partNumber.value,
      eTag: eTag == null ? this.eTag : eTag.value,
      size: size == null ? this.size : size.value
    );
  }
  
  UploadedPart.fromJson(Map<String, dynamic> json)  
    : _partNumber = (json['partNumber'] as num?)?.toInt(),
      _eTag = json['eTag'],
      _size = (json['size'] as num?)?.toInt();
  
  Map<String, dynamic> toJson() => {
    'partNumber': _partNumber, 'eTag': _eTag, 'size': _size
  };
  
  Map<String, Object?> toMap() => {
    'partNumber': _partNumber,
    'eTag': _eTag,
    'size': _size
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UploadedPart";
    modelSchemaDefinition.pluralName = "UploadedParts";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'partNumber',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'eTag',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'size',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
  });
}