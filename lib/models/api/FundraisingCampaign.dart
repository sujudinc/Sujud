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


/** This is an auto generated class representing the FundraisingCampaign type in your schema. */
class FundraisingCampaign extends amplify_core.Model {
  static const classType = const _FundraisingCampaignModelType();
  final String id;
  final String? _title;
  final String? _description;
  final String? _featureImage;
  final FundraisingCampaignType? _type;
  final double? _currentAmount;
  final double? _goal;
  final amplify_core.TemporalDateTime? _goalDate;
  final String? _currency;
  final User? _creator;
  final Mosque? _mosque;
  final List<Donation>? _donations;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  FundraisingCampaignModelIdentifier get modelIdentifier {
      return FundraisingCampaignModelIdentifier(
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
  
  String? get featureImage {
    return _featureImage;
  }
  
  FundraisingCampaignType get type {
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
  
  double get currentAmount {
    try {
      return _currentAmount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get goal {
    try {
      return _goal!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get goalDate {
    try {
      return _goalDate!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get currency {
    try {
      return _currency!;
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
  
  List<Donation>? get donations {
    return _donations;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const FundraisingCampaign._internal({required this.id, required title, description, featureImage, required type, required currentAmount, required goal, required goalDate, required currency, required creator, required mosque, donations, createdAt, updatedAt}): _title = title, _description = description, _featureImage = featureImage, _type = type, _currentAmount = currentAmount, _goal = goal, _goalDate = goalDate, _currency = currency, _creator = creator, _mosque = mosque, _donations = donations, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory FundraisingCampaign({String? id, required String title, String? description, String? featureImage, required FundraisingCampaignType type, required double currentAmount, required double goal, required amplify_core.TemporalDateTime goalDate, required String currency, required User creator, required Mosque mosque, List<Donation>? donations, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return FundraisingCampaign._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      description: description,
      featureImage: featureImage,
      type: type,
      currentAmount: currentAmount,
      goal: goal,
      goalDate: goalDate,
      currency: currency,
      creator: creator,
      mosque: mosque,
      donations: donations != null ? List<Donation>.unmodifiable(donations) : donations,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FundraisingCampaign &&
      id == other.id &&
      _title == other._title &&
      _description == other._description &&
      _featureImage == other._featureImage &&
      _type == other._type &&
      _currentAmount == other._currentAmount &&
      _goal == other._goal &&
      _goalDate == other._goalDate &&
      _currency == other._currency &&
      _creator == other._creator &&
      _mosque == other._mosque &&
      DeepCollectionEquality().equals(_donations, other._donations) &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("FundraisingCampaign {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("featureImage=" + "$_featureImage" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("currentAmount=" + (_currentAmount != null ? _currentAmount!.toString() : "null") + ", ");
    buffer.write("goal=" + (_goal != null ? _goal!.toString() : "null") + ", ");
    buffer.write("goalDate=" + (_goalDate != null ? _goalDate!.format() : "null") + ", ");
    buffer.write("currency=" + "$_currency" + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  FundraisingCampaign copyWith({String? title, String? description, String? featureImage, FundraisingCampaignType? type, double? currentAmount, double? goal, amplify_core.TemporalDateTime? goalDate, String? currency, User? creator, Mosque? mosque, List<Donation>? donations, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return FundraisingCampaign._internal(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      featureImage: featureImage ?? this.featureImage,
      type: type ?? this.type,
      currentAmount: currentAmount ?? this.currentAmount,
      goal: goal ?? this.goal,
      goalDate: goalDate ?? this.goalDate,
      currency: currency ?? this.currency,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      donations: donations ?? this.donations,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  FundraisingCampaign copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String?>? description,
    ModelFieldValue<String?>? featureImage,
    ModelFieldValue<FundraisingCampaignType>? type,
    ModelFieldValue<double>? currentAmount,
    ModelFieldValue<double>? goal,
    ModelFieldValue<amplify_core.TemporalDateTime>? goalDate,
    ModelFieldValue<String>? currency,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<List<Donation>?>? donations,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return FundraisingCampaign._internal(
      id: id,
      title: title == null ? this.title : title.value,
      description: description == null ? this.description : description.value,
      featureImage: featureImage == null ? this.featureImage : featureImage.value,
      type: type == null ? this.type : type.value,
      currentAmount: currentAmount == null ? this.currentAmount : currentAmount.value,
      goal: goal == null ? this.goal : goal.value,
      goalDate: goalDate == null ? this.goalDate : goalDate.value,
      currency: currency == null ? this.currency : currency.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      donations: donations == null ? this.donations : donations.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  FundraisingCampaign.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _description = json['description'],
      _featureImage = json['featureImage'],
      _type = amplify_core.enumFromString<FundraisingCampaignType>(json['type'], FundraisingCampaignType.values),
      _currentAmount = (json['currentAmount'] as num?)?.toDouble(),
      _goal = (json['goal'] as num?)?.toDouble(),
      _goalDate = json['goalDate'] != null ? amplify_core.TemporalDateTime.fromString(json['goalDate']) : null,
      _currency = json['currency'],
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _donations = json['donations'] is List
        ? (json['donations'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Donation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'title': _title, 'description': _description, 'featureImage': _featureImage, 'type': amplify_core.enumToString(_type), 'currentAmount': _currentAmount, 'goal': _goal, 'goalDate': _goalDate?.format(), 'currency': _currency, 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'donations': _donations?.map((Donation? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'description': _description,
    'featureImage': _featureImage,
    'type': _type,
    'currentAmount': _currentAmount,
    'goal': _goal,
    'goalDate': _goalDate,
    'currency': _currency,
    'creator': _creator,
    'mosque': _mosque,
    'donations': _donations,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<FundraisingCampaignModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<FundraisingCampaignModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final FEATUREIMAGE = amplify_core.QueryField(fieldName: "featureImage");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final CURRENTAMOUNT = amplify_core.QueryField(fieldName: "currentAmount");
  static final GOAL = amplify_core.QueryField(fieldName: "goal");
  static final GOALDATE = amplify_core.QueryField(fieldName: "goalDate");
  static final CURRENCY = amplify_core.QueryField(fieldName: "currency");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final DONATIONS = amplify_core.QueryField(
    fieldName: "donations",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Donation'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "FundraisingCampaign";
    modelSchemaDefinition.pluralName = "FundraisingCampaigns";
    
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
      key: FundraisingCampaign.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.DESCRIPTION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.FEATUREIMAGE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.CURRENTAMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.GOAL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.GOALDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.CURRENCY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: FundraisingCampaign.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: FundraisingCampaign.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: FundraisingCampaign.DONATIONS,
      isRequired: false,
      ofModelName: 'Donation',
      associatedKey: Donation.FUNDRAISINGCAMPAIGN
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: FundraisingCampaign.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _FundraisingCampaignModelType extends amplify_core.ModelType<FundraisingCampaign> {
  const _FundraisingCampaignModelType();
  
  @override
  FundraisingCampaign fromJson(Map<String, dynamic> jsonData) {
    return FundraisingCampaign.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'FundraisingCampaign';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [FundraisingCampaign] in your schema.
 */
class FundraisingCampaignModelIdentifier implements amplify_core.ModelIdentifier<FundraisingCampaign> {
  final String id;

  /** Create an instance of FundraisingCampaignModelIdentifier using [id] the primary key. */
  const FundraisingCampaignModelIdentifier({
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
  String toString() => 'FundraisingCampaignModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is FundraisingCampaignModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}