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


/** This is an auto generated class representing the Gathering type in your schema. */
class Gathering extends amplify_core.Model {
  static const classType = const _GatheringModelType();
  final String id;
  final String? _title;
  final String? _description;
  final GatheringType? _type;
  final amplify_core.TemporalDateTime? _startDate;
  final amplify_core.TemporalDateTime? _endDate;
  final Address? _address;
  final User? _creator;
  final Mosque? _mosque;
  final List<GatheringAttendees>? _attendees;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GatheringModelIdentifier get modelIdentifier {
      return GatheringModelIdentifier(
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
  
  GatheringType get type {
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
  
  Address get address {
    try {
      return _address!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  List<GatheringAttendees>? get attendees {
    return _attendees;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Gathering._internal({required this.id, required title, description, required type, required startDate, endDate, required address, required creator, required mosque, attendees, createdAt, updatedAt}): _title = title, _description = description, _type = type, _startDate = startDate, _endDate = endDate, _address = address, _creator = creator, _mosque = mosque, _attendees = attendees, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Gathering({String? id, required String title, String? description, required GatheringType type, required amplify_core.TemporalDateTime startDate, amplify_core.TemporalDateTime? endDate, required Address address, required User creator, required Mosque mosque, List<GatheringAttendees>? attendees, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Gathering._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      type: type,
      startDate: startDate,
      endDate: endDate,
      address: address,
      creator: creator,
      mosque: mosque,
      attendees: attendees != null ? List<GatheringAttendees>.unmodifiable(attendees) : attendees,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Gathering &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _type == other._type &&
      _startDate == other._startDate &&
      _endDate == other._endDate &&
      _address == other._address &&
      _creator == other._creator &&
      _mosque == other._mosque &&
      DeepCollectionEquality().equals(_attendees, other._attendees) &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Gathering {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("startDate=" + (_startDate != null ? _startDate!.format() : "null") + ", ");
    buffer.write("endDate=" + (_endDate != null ? _endDate!.format() : "null") + ", ");
    buffer.write("address=" + (_address != null ? _address!.toString() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Gathering copyWith({String? title, String? description, GatheringType? type, amplify_core.TemporalDateTime? startDate, amplify_core.TemporalDateTime? endDate, Address? address, User? creator, Mosque? mosque, List<GatheringAttendees>? attendees, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Gathering._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      address: address ?? this.address,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      attendees: attendees ?? this.attendees,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Gathering copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String?>? description,
    ModelFieldValue<GatheringType>? type,
    ModelFieldValue<amplify_core.TemporalDateTime>? startDate,
    ModelFieldValue<amplify_core.TemporalDateTime?>? endDate,
    ModelFieldValue<Address>? address,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<List<GatheringAttendees>?>? attendees,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Gathering._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      type: type == null ? this.type : type.value,
      startDate: startDate == null ? this.startDate : startDate.value,
      endDate: endDate == null ? this.endDate : endDate.value,
      address: address == null ? this.address : address.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      attendees: attendees == null ? this.attendees : attendees.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Gathering.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description'],
      _type = amplify_core.enumFromString<GatheringType>(json['type'], GatheringType.values),
      _startDate = json['startDate'] != null ? amplify_core.TemporalDateTime.fromString(json['startDate']) : null,
      _endDate = json['endDate'] != null ? amplify_core.TemporalDateTime.fromString(json['endDate']) : null,
      _address = json['address']?['serializedData'] != null
        ? Address.fromJson(new Map<String, dynamic>.from(json['address']['serializedData']))
        : null,
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _attendees = json['attendees'] is List
        ? (json['attendees'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => GatheringAttendees.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description, 'type': amplify_core.enumToString(_type), 'startDate': _startDate?.format(), 'endDate': _endDate?.format(), 'address': _address?.toJson(), 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'attendees': _attendees?.map((GatheringAttendees? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'type': _type,
    'startDate': _startDate,
    'endDate': _endDate,
    'address': _address,
    'creator': _creator,
    'mosque': _mosque,
    'attendees': _attendees,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<GatheringModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<GatheringModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final STARTDATE = amplify_core.QueryField(fieldName: "startDate");
  static final ENDDATE = amplify_core.QueryField(fieldName: "endDate");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final ATTENDEES = amplify_core.QueryField(
    fieldName: "attendees",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'GatheringAttendees'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Gathering";
    modelSchemaDefinition.pluralName = "Gatherings";
    
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
      key: Gathering.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.STARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.ENDDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'address',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Address')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Gathering.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Gathering.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Gathering.ATTENDEES,
      isRequired: false,
      ofModelName: 'GatheringAttendees',
      associatedKey: GatheringAttendees.GATHERING
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Gathering.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _GatheringModelType extends amplify_core.ModelType<Gathering> {
  const _GatheringModelType();
  
  @override
  Gathering fromJson(Map<String, dynamic> jsonData) {
    return Gathering.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Gathering';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Gathering] in your schema.
 */
class GatheringModelIdentifier implements amplify_core.ModelIdentifier<Gathering> {
  final String id;

  /** Create an instance of GatheringModelIdentifier using [id] the primary key. */
  const GatheringModelIdentifier({
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
  String toString() => 'GatheringModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GatheringModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}