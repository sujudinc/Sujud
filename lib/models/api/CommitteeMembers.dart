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


/** This is an auto generated class representing the CommitteeMembers type in your schema. */
class CommitteeMembers extends amplify_core.Model {
  static const classType = const _CommitteeMembersModelType();
  final String id;
  final Committee? _committee;
  final User? _user;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CommitteeMembersModelIdentifier get modelIdentifier {
      return CommitteeMembersModelIdentifier(
        id: id
      );
  }
  
  Committee get committee {
    try {
      return _committee!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const CommitteeMembers._internal({required this.id, required committee, required user, createdAt, updatedAt}): _committee = committee, _user = user, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory CommitteeMembers({String? id, required Committee committee, required User user}) {
    return CommitteeMembers._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      committee: committee,
      user: user);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitteeMembers &&
      id == other.id &&
      _committee == other._committee &&
      _user == other._user;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("CommitteeMembers {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("committee=" + (_committee != null ? _committee!.toString() : "null") + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  CommitteeMembers copyWith({Committee? committee, User? user}) {
    return CommitteeMembers._internal(
      id: id,
      committee: committee ?? this.committee,
      user: user ?? this.user);
  }
  
  CommitteeMembers copyWithModelFieldValues({
    ModelFieldValue<Committee>? committee,
    ModelFieldValue<User>? user
  }) {
    return CommitteeMembers._internal(
      id: id,
      committee: committee == null ? this.committee : committee.value,
      user: user == null ? this.user : user.value
    );
  }
  
  CommitteeMembers.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _committee = json['committee']?['serializedData'] != null
        ? Committee.fromJson(new Map<String, dynamic>.from(json['committee']['serializedData']))
        : null,
      _user = json['user']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'committee': _committee?.toJson(), 'user': _user?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'committee': _committee,
    'user': _user,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CommitteeMembersModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CommitteeMembersModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final COMMITTEE = amplify_core.QueryField(
    fieldName: "committee",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Committee'));
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "CommitteeMembers";
    modelSchemaDefinition.pluralName = "CommitteeMembers";
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["committeeId"], name: "byCommittee"),
      amplify_core.ModelIndex(fields: const ["userId"], name: "byUser")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: CommitteeMembers.COMMITTEE,
      isRequired: true,
      targetNames: ['committeeId'],
      ofModelName: 'Committee'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: CommitteeMembers.USER,
      isRequired: true,
      targetNames: ['userId'],
      ofModelName: 'User'
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

class _CommitteeMembersModelType extends amplify_core.ModelType<CommitteeMembers> {
  const _CommitteeMembersModelType();
  
  @override
  CommitteeMembers fromJson(Map<String, dynamic> jsonData) {
    return CommitteeMembers.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'CommitteeMembers';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [CommitteeMembers] in your schema.
 */
class CommitteeMembersModelIdentifier implements amplify_core.ModelIdentifier<CommitteeMembers> {
  final String id;

  /** Create an instance of CommitteeMembersModelIdentifier using [id] the primary key. */
  const CommitteeMembersModelIdentifier({
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
  String toString() => 'CommitteeMembersModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CommitteeMembersModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}