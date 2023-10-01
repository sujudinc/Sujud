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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Committee type in your schema. */
class Committee extends amplify_core.Model {
  static const classType = const _CommitteeModelType();
  final String id;
  final String? _title;
  final String? _description;
  final User? _creator;
  final Mosque? _mosque;
  final List<CommitteeMembers>? _members;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CommitteeModelIdentifier get modelIdentifier {
      return CommitteeModelIdentifier(
        id: id
      );
  }
  
  String get title {
    try {
      return _title!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get description {
    return _description;
  }
  
  User get creator {
    try {
      return _creator!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Mosque get mosque {
    try {
      return _mosque!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<CommitteeMembers>? get members {
    return _members;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Committee._internal({required this.id, required title, description, required creator, required mosque, members, createdAt, updatedAt}): _title = title, _description = description, _creator = creator, _mosque = mosque, _members = members, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Committee({String? id, required String title, String? description, required User creator, required Mosque mosque, List<CommitteeMembers>? members, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Committee._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      creator: creator,
      mosque: mosque,
      members: members != null ? List<CommitteeMembers>.unmodifiable(members) : members,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Committee &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _creator == other._creator &&
      _mosque == other._mosque &&
      DeepCollectionEquality().equals(_members, other._members) &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Committee {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Committee copyWith({String? title, String? description, User? creator, Mosque? mosque, List<CommitteeMembers>? members, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Committee._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      members: members ?? this.members,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Committee copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String?>? description,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<List<CommitteeMembers>?>? members,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Committee._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      members: members == null ? this.members : members.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Committee.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description'],
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _members = json['members'] is List
        ? (json['members'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CommitteeMembers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description, 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'members': _members?.map((CommitteeMembers? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'creator': _creator,
    'mosque': _mosque,
    'members': _members,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CommitteeModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CommitteeModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final MEMBERS = amplify_core.QueryField(
    fieldName: "members",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CommitteeMembers'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Committee";
    modelSchemaDefinition.pluralName = "Committees";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "creatorId",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PRIVATE,
        operations: const [
          amplify_core.ModelOperation.READ
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["creatorId"], name: "byCreatorId"),
      amplify_core.ModelIndex(fields: const ["mosqueId"], name: "byMosqueId")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Committee.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Committee.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Committee.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Committee.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Committee.MEMBERS,
      isRequired: false,
      ofModelName: 'CommitteeMembers',
      associatedKey: CommitteeMembers.COMMITTEE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Committee.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Committee.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _CommitteeModelType extends amplify_core.ModelType<Committee> {
  const _CommitteeModelType();
  
  @override
  Committee fromJson(Map<String, dynamic> jsonData) {
    return Committee.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Committee';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Committee] in your schema.
 */
class CommitteeModelIdentifier implements amplify_core.ModelIdentifier<Committee> {
  final String id;

  /** Create an instance of CommitteeModelIdentifier using [id] the primary key. */
  const CommitteeModelIdentifier({
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
  String toString() => 'CommitteeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CommitteeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}