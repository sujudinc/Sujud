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


/** This is an auto generated class representing the VolunteerTaskUser type in your schema. */
class VolunteerTaskUser extends amplify_core.Model {
  static const classType = const _VolunteerTaskUserModelType();
  final String id;
  final User? _user;
  final VolunteerTask? _volunteerTask;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  VolunteerTaskUserModelIdentifier get modelIdentifier {
      return VolunteerTaskUserModelIdentifier(
        id: id
      );
  }
  
  User get user {
    try {
      return _user!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  VolunteerTask get volunteerTask {
    try {
      return _volunteerTask!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const VolunteerTaskUser._internal({required this.id, required user, required volunteerTask, createdAt, updatedAt}): _user = user, _volunteerTask = volunteerTask, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory VolunteerTaskUser({String? id, required User user, required VolunteerTask volunteerTask}) {
    return VolunteerTaskUser._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      user: user,
      volunteerTask: volunteerTask);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolunteerTaskUser &&
      id == other.id &&
      _user == other._user &&
      _volunteerTask == other._volunteerTask;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("VolunteerTaskUser {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("volunteerTask=" + (_volunteerTask != null ? _volunteerTask!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  VolunteerTaskUser copyWith({User? user, VolunteerTask? volunteerTask}) {
    return VolunteerTaskUser._internal(
      id: id,
      user: user ?? this.user,
      volunteerTask: volunteerTask ?? this.volunteerTask);
  }
  
  VolunteerTaskUser copyWithModelFieldValues({
    ModelFieldValue<User>? user,
    ModelFieldValue<VolunteerTask>? volunteerTask
  }) {
    return VolunteerTaskUser._internal(
      id: id,
      user: user == null ? this.user : user.value,
      volunteerTask: volunteerTask == null ? this.volunteerTask : volunteerTask.value
    );
  }
  
  VolunteerTaskUser.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _user = json['user']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
        : null,
      _volunteerTask = json['volunteerTask']?['serializedData'] != null
        ? VolunteerTask.fromJson(new Map<String, dynamic>.from(json['volunteerTask']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'user': _user?.toJson(), 'volunteerTask': _volunteerTask?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'user': _user,
    'volunteerTask': _volunteerTask,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<VolunteerTaskUserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<VolunteerTaskUserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final VOLUNTEERTASK = amplify_core.QueryField(
    fieldName: "volunteerTask",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VolunteerTask'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "VolunteerTaskUser";
    modelSchemaDefinition.pluralName = "VolunteerTaskUsers";
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["userId"], name: "byUser"),
      amplify_core.ModelIndex(fields: const ["volunteerTaskId"], name: "byVolunteerTask")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: VolunteerTaskUser.USER,
      isRequired: true,
      targetNames: ['userId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: VolunteerTaskUser.VOLUNTEERTASK,
      isRequired: true,
      targetNames: ['volunteerTaskId'],
      ofModelName: 'VolunteerTask'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _VolunteerTaskUserModelType extends amplify_core.ModelType<VolunteerTaskUser> {
  const _VolunteerTaskUserModelType();
  
  @override
  VolunteerTaskUser fromJson(Map<String, dynamic> jsonData) {
    return VolunteerTaskUser.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'VolunteerTaskUser';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [VolunteerTaskUser] in your schema.
 */
class VolunteerTaskUserModelIdentifier implements amplify_core.ModelIdentifier<VolunteerTaskUser> {
  final String id;

  /** Create an instance of VolunteerTaskUserModelIdentifier using [id] the primary key. */
  const VolunteerTaskUserModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'VolunteerTaskUserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is VolunteerTaskUserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}