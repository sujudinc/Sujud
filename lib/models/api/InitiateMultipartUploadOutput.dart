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

/** This is an auto generated class representing the InitiateMultipartUploadOutput type in your schema. */
class InitiateMultipartUploadOutput {
  final String? _bucket;
  final String? _key;
  final String? _uploadId;

  String get bucket {
    try {
      return _bucket!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get key {
    try {
      return _key!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get uploadId {
    try {
      return _uploadId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const InitiateMultipartUploadOutput._internal({required bucket, required key, required uploadId}): _bucket = bucket, _key = key, _uploadId = uploadId;
  
  factory InitiateMultipartUploadOutput({required String bucket, required String key, required String uploadId}) {
    return InitiateMultipartUploadOutput._internal(
      bucket: bucket,
      key: key,
      uploadId: uploadId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InitiateMultipartUploadOutput &&
      _bucket == other._bucket &&
      _key == other._key &&
      _uploadId == other._uploadId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("InitiateMultipartUploadOutput {");
    buffer.write("bucket=" + "$_bucket" + ", ");
    buffer.write("key=" + "$_key" + ", ");
    buffer.write("uploadId=" + "$_uploadId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  InitiateMultipartUploadOutput copyWith({String? bucket, String? key, String? uploadId}) {
    return InitiateMultipartUploadOutput._internal(
      bucket: bucket ?? this.bucket,
      key: key ?? this.key,
      uploadId: uploadId ?? this.uploadId);
  }
  
  InitiateMultipartUploadOutput copyWithModelFieldValues({
    ModelFieldValue<String>? bucket,
    ModelFieldValue<String>? key,
    ModelFieldValue<String>? uploadId
  }) {
    return InitiateMultipartUploadOutput._internal(
      bucket: bucket == null ? this.bucket : bucket.value,
      key: key == null ? this.key : key.value,
      uploadId: uploadId == null ? this.uploadId : uploadId.value
    );
  }
  
  InitiateMultipartUploadOutput.fromJson(Map<String, dynamic> json)  
    : _bucket = json['bucket'],
      _key = json['key'],
      _uploadId = json['uploadId'];
  
  Map<String, dynamic> toJson() => {
    'bucket': _bucket, 'key': _key, 'uploadId': _uploadId
  };
  
  Map<String, Object?> toMap() => {
    'bucket': _bucket,
    'key': _key,
    'uploadId': _uploadId
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "InitiateMultipartUploadOutput";
    modelSchemaDefinition.pluralName = "InitiateMultipartUploadOutputs";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'bucket',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'key',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'uploadId',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}
