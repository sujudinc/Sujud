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


/** This is an auto generated class representing the MonthlyPrayerSchedule type in your schema. */
class MonthlyPrayerSchedule extends amplify_core.Model {
  static const classType = const _MonthlyPrayerScheduleModelType();
  final String id;
  final int? _year;
  final int? _month;
  final List<PrayerTime>? _prayerTimes;
  final User? _creator;
  final Mosque? _mosque;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MonthlyPrayerScheduleModelIdentifier get modelIdentifier {
      return MonthlyPrayerScheduleModelIdentifier(
        id: id
      );
  }
  
  int get year {
    try {
      return _year!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int get month {
    try {
      return _month!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<PrayerTime> get prayerTimes {
    try {
      return _prayerTimes!;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const MonthlyPrayerSchedule._internal({required this.id, required year, required month, required prayerTimes, required creator, required mosque, createdAt, updatedAt}): _year = year, _month = month, _prayerTimes = prayerTimes, _creator = creator, _mosque = mosque, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory MonthlyPrayerSchedule({String? id, required int year, required int month, required List<PrayerTime> prayerTimes, required User creator, required Mosque mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return MonthlyPrayerSchedule._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      year: year,
      month: month,
      prayerTimes: prayerTimes != null ? List<PrayerTime>.unmodifiable(prayerTimes) : prayerTimes,
      creator: creator,
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
    return other is MonthlyPrayerSchedule &&
      id == other.id &&
      _year == other._year &&
      _month == other._month &&
      DeepCollectionEquality().equals(_prayerTimes, other._prayerTimes) &&
      _creator == other._creator &&
      _mosque == other._mosque &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("MonthlyPrayerSchedule {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("year=" + (_year != null ? _year!.toString() : "null") + ", ");
    buffer.write("month=" + (_month != null ? _month!.toString() : "null") + ", ");
    buffer.write("prayerTimes=" + (_prayerTimes != null ? _prayerTimes!.toString() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  MonthlyPrayerSchedule copyWith({int? year, int? month, List<PrayerTime>? prayerTimes, User? creator, Mosque? mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return MonthlyPrayerSchedule._internal(
      id: id,
      year: year ?? this.year,
      month: month ?? this.month,
      prayerTimes: prayerTimes ?? this.prayerTimes,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  MonthlyPrayerSchedule copyWithModelFieldValues({
    ModelFieldValue<int>? year,
    ModelFieldValue<int>? month,
    ModelFieldValue<List<PrayerTime>>? prayerTimes,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return MonthlyPrayerSchedule._internal(
      id: id,
      year: year == null ? this.year : year.value,
      month: month == null ? this.month : month.value,
      prayerTimes: prayerTimes == null ? this.prayerTimes : prayerTimes.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  MonthlyPrayerSchedule.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _year = (json['year'] as num?)?.toInt(),
      _month = (json['month'] as num?)?.toInt(),
      _prayerTimes = json['prayerTimes'] is List
        ? (json['prayerTimes'] as List)
          .where((e) => e != null)
          .map((e) => PrayerTime.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'year': _year, 'month': _month, 'prayerTimes': _prayerTimes?.map((PrayerTime? e) => e?.toJson()).toList(), 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'year': _year,
    'month': _month,
    'prayerTimes': _prayerTimes,
    'creator': _creator,
    'mosque': _mosque,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<MonthlyPrayerScheduleModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<MonthlyPrayerScheduleModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final YEAR = amplify_core.QueryField(fieldName: "year");
  static final MONTH = amplify_core.QueryField(fieldName: "month");
  static final PRAYERTIMES = amplify_core.QueryField(fieldName: "prayerTimes");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "MonthlyPrayerSchedule";
    modelSchemaDefinition.pluralName = "MonthlyPrayerSchedules";
    
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
      key: MonthlyPrayerSchedule.YEAR,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: MonthlyPrayerSchedule.MONTH,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'prayerTimes',
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embeddedCollection, ofCustomTypeName: 'PrayerTime')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: MonthlyPrayerSchedule.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: MonthlyPrayerSchedule.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: MonthlyPrayerSchedule.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: MonthlyPrayerSchedule.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _MonthlyPrayerScheduleModelType extends amplify_core.ModelType<MonthlyPrayerSchedule> {
  const _MonthlyPrayerScheduleModelType();
  
  @override
  MonthlyPrayerSchedule fromJson(Map<String, dynamic> jsonData) {
    return MonthlyPrayerSchedule.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'MonthlyPrayerSchedule';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [MonthlyPrayerSchedule] in your schema.
 */
class MonthlyPrayerScheduleModelIdentifier implements amplify_core.ModelIdentifier<MonthlyPrayerSchedule> {
  final String id;

  /** Create an instance of MonthlyPrayerScheduleModelIdentifier using [id] the primary key. */
  const MonthlyPrayerScheduleModelIdentifier({
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
  String toString() => 'MonthlyPrayerScheduleModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MonthlyPrayerScheduleModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}