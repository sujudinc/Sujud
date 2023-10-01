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


/** This is an auto generated class representing the VolunteerTask type in your schema. */
class VolunteerTask extends amplify_core.Model {
  static const classType = const _VolunteerTaskModelType();
  final String id;
  final String? _name;
  final String? _description;
  final amplify_core.TemporalDateTime? _startDate;
  final amplify_core.TemporalDateTime? _endDate;
  final User? _creator;
  final Mosque? _mosque;
  final List<VolunteerTaskUser>? _volunteers;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  VolunteerTaskModelIdentifier get modelIdentifier {
      return VolunteerTaskModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
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
  
  amplify_core.TemporalDateTime get startDate {
    try {
      return _startDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get endDate {
    return _endDate;
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
  
  List<VolunteerTaskUser>? get volunteers {
    return _volunteers;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const VolunteerTask._internal({required this.id, required name, description, required startDate, endDate, required creator, required mosque, volunteers, createdAt, updatedAt}): _name = name, _description = description, _startDate = startDate, _endDate = endDate, _creator = creator, _mosque = mosque, _volunteers = volunteers, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory VolunteerTask({String? id, required String name, String? description, required amplify_core.TemporalDateTime startDate, amplify_core.TemporalDateTime? endDate, required User creator, required Mosque mosque, List<VolunteerTaskUser>? volunteers, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return VolunteerTask._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      description: description,
      startDate: startDate,
      endDate: endDate,
      creator: creator,
      mosque: mosque,
      volunteers: volunteers != null ? List<VolunteerTaskUser>.unmodifiable(volunteers) : volunteers,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolunteerTask &&
      id == other.id &&
      _name == other._name &&
      _description == other._description &&
      _startDate == other._startDate &&
      _endDate == other._endDate &&
      _creator == other._creator &&
      _mosque == other._mosque &&
      DeepCollectionEquality().equals(_volunteers, other._volunteers) &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("VolunteerTask {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("startDate=" + (_startDate != null ? _startDate!.format() : "null") + ", ");
    buffer.write("endDate=" + (_endDate != null ? _endDate!.format() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  VolunteerTask copyWith({String? name, String? description, amplify_core.TemporalDateTime? startDate, amplify_core.TemporalDateTime? endDate, User? creator, Mosque? mosque, List<VolunteerTaskUser>? volunteers, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return VolunteerTask._internal(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      volunteers: volunteers ?? this.volunteers,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  VolunteerTask copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String?>? description,
    ModelFieldValue<amplify_core.TemporalDateTime>? startDate,
    ModelFieldValue<amplify_core.TemporalDateTime?>? endDate,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<List<VolunteerTaskUser>?>? volunteers,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return VolunteerTask._internal(
      id: id,
      name: name == null ? this.name : name.value,
      description: description == null ? this.description : description.value,
      startDate: startDate == null ? this.startDate : startDate.value,
      endDate: endDate == null ? this.endDate : endDate.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      volunteers: volunteers == null ? this.volunteers : volunteers.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  VolunteerTask.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _description = json['description'],
      _startDate = json['startDate'] != null ? amplify_core.TemporalDateTime.fromString(json['startDate']) : null,
      _endDate = json['endDate'] != null ? amplify_core.TemporalDateTime.fromString(json['endDate']) : null,
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _volunteers = json['volunteers'] is List
        ? (json['volunteers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => VolunteerTaskUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'description': _description, 'startDate': _startDate?.format(), 'endDate': _endDate?.format(), 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'volunteers': _volunteers?.map((VolunteerTaskUser? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'description': _description,
    'startDate': _startDate,
    'endDate': _endDate,
    'creator': _creator,
    'mosque': _mosque,
    'volunteers': _volunteers,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<VolunteerTaskModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<VolunteerTaskModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final STARTDATE = amplify_core.QueryField(fieldName: "startDate");
  static final ENDDATE = amplify_core.QueryField(fieldName: "endDate");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final VOLUNTEERS = amplify_core.QueryField(
    fieldName: "volunteers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VolunteerTaskUser'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "VolunteerTask";
    modelSchemaDefinition.pluralName = "VolunteerTasks";
    
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
      key: VolunteerTask.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VolunteerTask.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VolunteerTask.STARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VolunteerTask.ENDDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: VolunteerTask.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: VolunteerTask.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: VolunteerTask.VOLUNTEERS,
      isRequired: false,
      ofModelName: 'VolunteerTaskUser',
      associatedKey: VolunteerTaskUser.VOLUNTEERTASK
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VolunteerTask.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: VolunteerTask.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _VolunteerTaskModelType extends amplify_core.ModelType<VolunteerTask> {
  const _VolunteerTaskModelType();
  
  @override
  VolunteerTask fromJson(Map<String, dynamic> jsonData) {
    return VolunteerTask.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'VolunteerTask';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [VolunteerTask] in your schema.
 */
class VolunteerTaskModelIdentifier implements amplify_core.ModelIdentifier<VolunteerTask> {
  final String id;

  /** Create an instance of VolunteerTaskModelIdentifier using [id] the primary key. */
  const VolunteerTaskModelIdentifier({
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
  String toString() => 'VolunteerTaskModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is VolunteerTaskModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}