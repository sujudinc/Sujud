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

// 📦 Package imports:
import 'package:amplify_core/amplify_core.dart' as amplify_core;

// 🌎 Project imports:
import 'ModelProvider.dart';

/** This is an auto generated class representing the GenerateMultipartUploadUrlOutput type in your schema. */
class GenerateMultipartUploadUrlOutput {
  final int? _partNumber;
  final String? _url;

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
  
  String get url {
    try {
      return _url!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const GenerateMultipartUploadUrlOutput._internal({required partNumber, required url}): _partNumber = partNumber, _url = url;
  
  factory GenerateMultipartUploadUrlOutput({required int partNumber, required String url}) {
    return GenerateMultipartUploadUrlOutput._internal(
      partNumber: partNumber,
      url: url);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateMultipartUploadUrlOutput &&
      _partNumber == other._partNumber &&
      _url == other._url;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GenerateMultipartUploadUrlOutput {");
    buffer.write("partNumber=" + (_partNumber != null ? _partNumber!.toString() : "null") + ", ");
    buffer.write("url=" + "$_url");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GenerateMultipartUploadUrlOutput copyWith({int? partNumber, String? url}) {
    return GenerateMultipartUploadUrlOutput._internal(
      partNumber: partNumber ?? this.partNumber,
      url: url ?? this.url);
  }
  
  GenerateMultipartUploadUrlOutput copyWithModelFieldValues({
    ModelFieldValue<int>? partNumber,
    ModelFieldValue<String>? url
  }) {
    return GenerateMultipartUploadUrlOutput._internal(
      partNumber: partNumber == null ? this.partNumber : partNumber.value,
      url: url == null ? this.url : url.value
    );
  }
  
  GenerateMultipartUploadUrlOutput.fromJson(Map<String, dynamic> json)  
    : _partNumber = (json['partNumber'] as num?)?.toInt(),
      _url = json['url'];
  
  Map<String, dynamic> toJson() => {
    'partNumber': _partNumber, 'url': _url
  };
  
  Map<String, Object?> toMap() => {
    'partNumber': _partNumber,
    'url': _url
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GenerateMultipartUploadUrlOutput";
    modelSchemaDefinition.pluralName = "GenerateMultipartUploadUrlOutputs";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'partNumber',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'url',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}
