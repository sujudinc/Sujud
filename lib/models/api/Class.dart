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


/** This is an auto generated class representing the Class type in your schema. */
class Class extends amplify_core.Model {
  static const classType = const _ClassModelType();
  final String id;
  final String? _title;
  final String? _description;
  final amplify_core.TemporalDateTime? _startDateTime;
  final amplify_core.TemporalDateTime? _endDateTime;
  final bool? _recurring;
  final List<DayType>? _daysOfWeek;
  final User? _creator;
  final User? _instructor;
  final Mosque? _mosque;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ClassModelIdentifier get modelIdentifier {
      return ClassModelIdentifier(
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
  
  amplify_core.TemporalDateTime get startDateTime {
    try {
      return _startDateTime!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get endDateTime {
    return _endDateTime;
  }
  
  bool get recurring {
    try {
      return _recurring!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<DayType>? get daysOfWeek {
    return _daysOfWeek;
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
  
  User get instructor {
    try {
      return _instructor!;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Class._internal({required this.id, required title, description, required startDateTime, endDateTime, required recurring, daysOfWeek, required creator, required instructor, required mosque, createdAt, updatedAt}): _title = title, _description = description, _startDateTime = startDateTime, _endDateTime = endDateTime, _recurring = recurring, _daysOfWeek = daysOfWeek, _creator = creator, _instructor = instructor, _mosque = mosque, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Class({String? id, required String title, String? description, required amplify_core.TemporalDateTime startDateTime, amplify_core.TemporalDateTime? endDateTime, required bool recurring, List<DayType>? daysOfWeek, required User creator, required User instructor, required Mosque mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Class._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      startDateTime: startDateTime,
      endDateTime: endDateTime,
      recurring: recurring,
      daysOfWeek: daysOfWeek != null ? List<DayType>.unmodifiable(daysOfWeek) : daysOfWeek,
      creator: creator,
      instructor: instructor,
      mosque: mosque,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Class &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _startDateTime == other._startDateTime &&
      _endDateTime == other._endDateTime &&
      _recurring == other._recurring &&
      DeepCollectionEquality().equals(_daysOfWeek, other._daysOfWeek) &&
      _creator == other._creator &&
      _instructor == other._instructor &&
      _mosque == other._mosque &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Class {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("startDateTime=" + (_startDateTime != null ? _startDateTime!.format() : "null") + ", ");
    buffer.write("endDateTime=" + (_endDateTime != null ? _endDateTime!.format() : "null") + ", ");
    buffer.write("recurring=" + (_recurring != null ? _recurring!.toString() : "null") + ", ");
    buffer.write("daysOfWeek=" + (_daysOfWeek != null ? _daysOfWeek!.map((e) => amplify_core.enumToString(e)).toString() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("instructor=" + (_instructor != null ? _instructor!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Class copyWith({String? title, String? description, amplify_core.TemporalDateTime? startDateTime, amplify_core.TemporalDateTime? endDateTime, bool? recurring, List<DayType>? daysOfWeek, User? creator, User? instructor, Mosque? mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Class._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      startDateTime: startDateTime ?? this.startDateTime,
      endDateTime: endDateTime ?? this.endDateTime,
      recurring: recurring ?? this.recurring,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      creator: creator ?? this.creator,
      instructor: instructor ?? this.instructor,
      mosque: mosque ?? this.mosque,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Class copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String?>? description,
    ModelFieldValue<amplify_core.TemporalDateTime>? startDateTime,
    ModelFieldValue<amplify_core.TemporalDateTime?>? endDateTime,
    ModelFieldValue<bool>? recurring,
    ModelFieldValue<List<DayType>>? daysOfWeek,
    ModelFieldValue<User>? creator,
    ModelFieldValue<User>? instructor,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Class._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      startDateTime: startDateTime == null ? this.startDateTime : startDateTime.value,
      endDateTime: endDateTime == null ? this.endDateTime : endDateTime.value,
      recurring: recurring == null ? this.recurring : recurring.value,
      daysOfWeek: daysOfWeek == null ? this.daysOfWeek : daysOfWeek.value,
      creator: creator == null ? this.creator : creator.value,
      instructor: instructor == null ? this.instructor : instructor.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Class.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description'],
      _startDateTime = json['startDateTime'] != null ? amplify_core.TemporalDateTime.fromString(json['startDateTime']) : null,
      _endDateTime = json['endDateTime'] != null ? amplify_core.TemporalDateTime.fromString(json['endDateTime']) : null,
      _recurring = json['recurring'],
      _daysOfWeek = json['daysOfWeek'] is List
        ? (json['daysOfWeek'] as List)
          .map((e) => amplify_core.enumFromString<DayType>(e, DayType.values)!)
          .toList()
        : null,
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _instructor = json['instructor']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['instructor']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description, 'startDateTime': _startDateTime?.format(), 'endDateTime': _endDateTime?.format(), 'recurring': _recurring, 'daysOfWeek': _daysOfWeek?.map((e) => amplify_core.enumToString(e)).toList(), 'creator': _creator?.toJson(), 'instructor': _instructor?.toJson(), 'mosque': _mosque?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'startDateTime': _startDateTime,
    'endDateTime': _endDateTime,
    'recurring': _recurring,
    'daysOfWeek': _daysOfWeek,
    'creator': _creator,
    'instructor': _instructor,
    'mosque': _mosque,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ClassModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ClassModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final STARTDATETIME = amplify_core.QueryField(fieldName: "startDateTime");
  static final ENDDATETIME = amplify_core.QueryField(fieldName: "endDateTime");
  static final RECURRING = amplify_core.QueryField(fieldName: "recurring");
  static final DAYSOFWEEK = amplify_core.QueryField(fieldName: "daysOfWeek");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final INSTRUCTOR = amplify_core.QueryField(
    fieldName: "instructor",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Class";
    modelSchemaDefinition.pluralName = "Classes";
    
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
      amplify_core.ModelIndex(fields: const ["instructorId"], name: "byInstructorId"),
      amplify_core.ModelIndex(fields: const ["mosqueId"], name: "byMosqueId")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.STARTDATETIME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.ENDDATETIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.RECURRING,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.DAYSOFWEEK,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.enumeration.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Class.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Class.INSTRUCTOR,
      isRequired: true,
      targetNames: ['instructorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Class.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Class.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ClassModelType extends amplify_core.ModelType<Class> {
  const _ClassModelType();
  
  @override
  Class fromJson(Map<String, dynamic> jsonData) {
    return Class.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Class';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Class] in your schema.
 */
class ClassModelIdentifier implements amplify_core.ModelIdentifier<Class> {
  final String id;

  /** Create an instance of ClassModelIdentifier using [id] the primary key. */
  const ClassModelIdentifier({
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
  String toString() => 'ClassModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ClassModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}