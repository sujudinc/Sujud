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

/** This is an auto generated class representing the PremiumSubscription type in your schema. */
class PremiumSubscription extends amplify_core.Model {
  static const classType = const _PremiumSubscriptionModelType();
  final String id;
  final PremiumSubscriptionStatus? _status;
  final amplify_core.TemporalDateTime? _startDate;
  final amplify_core.TemporalDateTime? _endDate;
  final String? _stripeSubscriptionId;
  final User? _purchaser;
  final Mosque? _mosque;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PremiumSubscriptionModelIdentifier get modelIdentifier {
      return PremiumSubscriptionModelIdentifier(
        id: id
      );
  }
  
  PremiumSubscriptionStatus get status {
    try {
      return _status!;
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
  
  String get stripeSubscriptionId {
    try {
      return _stripeSubscriptionId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User? get purchaser {
    return _purchaser;
  }
  
  Mosque? get mosque {
    return _mosque;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const PremiumSubscription._internal({required this.id, required status, required startDate, endDate, required stripeSubscriptionId, purchaser, mosque, createdAt, updatedAt}): _status = status, _startDate = startDate, _endDate = endDate, _stripeSubscriptionId = stripeSubscriptionId, _purchaser = purchaser, _mosque = mosque, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory PremiumSubscription({String? id, required PremiumSubscriptionStatus status, required amplify_core.TemporalDateTime startDate, amplify_core.TemporalDateTime? endDate, required String stripeSubscriptionId, User? purchaser, Mosque? mosque}) {
    return PremiumSubscription._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      status: status,
      startDate: startDate,
      endDate: endDate,
      stripeSubscriptionId: stripeSubscriptionId,
      purchaser: purchaser,
      mosque: mosque);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PremiumSubscription &&
      id == other.id &&
      _status == other._status &&
      _startDate == other._startDate &&
      _endDate == other._endDate &&
      _stripeSubscriptionId == other._stripeSubscriptionId &&
      _purchaser == other._purchaser &&
      _mosque == other._mosque;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("PremiumSubscription {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("startDate=" + (_startDate != null ? _startDate!.format() : "null") + ", ");
    buffer.write("endDate=" + (_endDate != null ? _endDate!.format() : "null") + ", ");
    buffer.write("stripeSubscriptionId=" + "$_stripeSubscriptionId" + ", ");
    buffer.write("purchaser=" + (_purchaser != null ? _purchaser!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  PremiumSubscription copyWith({PremiumSubscriptionStatus? status, amplify_core.TemporalDateTime? startDate, amplify_core.TemporalDateTime? endDate, String? stripeSubscriptionId, User? purchaser, Mosque? mosque}) {
    return PremiumSubscription._internal(
      id: id,
      status: status ?? this.status,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      stripeSubscriptionId: stripeSubscriptionId ?? this.stripeSubscriptionId,
      purchaser: purchaser ?? this.purchaser,
      mosque: mosque ?? this.mosque);
  }
  
  PremiumSubscription copyWithModelFieldValues({
    ModelFieldValue<PremiumSubscriptionStatus>? status,
    ModelFieldValue<amplify_core.TemporalDateTime>? startDate,
    ModelFieldValue<amplify_core.TemporalDateTime?>? endDate,
    ModelFieldValue<String>? stripeSubscriptionId,
    ModelFieldValue<User?>? purchaser,
    ModelFieldValue<Mosque?>? mosque
  }) {
    return PremiumSubscription._internal(
      id: id,
      status: status == null ? this.status : status.value,
      startDate: startDate == null ? this.startDate : startDate.value,
      endDate: endDate == null ? this.endDate : endDate.value,
      stripeSubscriptionId: stripeSubscriptionId == null ? this.stripeSubscriptionId : stripeSubscriptionId.value,
      purchaser: purchaser == null ? this.purchaser : purchaser.value,
      mosque: mosque == null ? this.mosque : mosque.value
    );
  }
  
  PremiumSubscription.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _status = amplify_core.enumFromString<PremiumSubscriptionStatus>(json['status'], PremiumSubscriptionStatus.values),
      _startDate = json['startDate'] != null ? amplify_core.TemporalDateTime.fromString(json['startDate']) : null,
      _endDate = json['endDate'] != null ? amplify_core.TemporalDateTime.fromString(json['endDate']) : null,
      _stripeSubscriptionId = json['stripeSubscriptionId'],
      _purchaser = json['purchaser']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['purchaser']['serializedData']))
        : null,
      _mosque = json['mosque']?['serializedData'] != null
        ? Mosque.fromJson(new Map<String, dynamic>.from(json['mosque']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'status': amplify_core.enumToString(_status), 'startDate': _startDate?.format(), 'endDate': _endDate?.format(), 'stripeSubscriptionId': _stripeSubscriptionId, 'purchaser': _purchaser?.toJson(), 'mosque': _mosque?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'status': _status,
    'startDate': _startDate,
    'endDate': _endDate,
    'stripeSubscriptionId': _stripeSubscriptionId,
    'purchaser': _purchaser,
    'mosque': _mosque,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<PremiumSubscriptionModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<PremiumSubscriptionModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final STARTDATE = amplify_core.QueryField(fieldName: "startDate");
  static final ENDDATE = amplify_core.QueryField(fieldName: "endDate");
  static final STRIPESUBSCRIPTIONID = amplify_core.QueryField(fieldName: "stripeSubscriptionId");
  static final PURCHASER = amplify_core.QueryField(
    fieldName: "purchaser",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "PremiumSubscription";
    modelSchemaDefinition.pluralName = "PremiumSubscriptions";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "purchaserId",
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
      amplify_core.ModelIndex(fields: const ["purchaserId"], name: "byPurchaser"),
      amplify_core.ModelIndex(fields: const ["mosqueId"], name: "byMosque")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PremiumSubscription.STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PremiumSubscription.STARTDATE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PremiumSubscription.ENDDATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: PremiumSubscription.STRIPESUBSCRIPTIONID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PremiumSubscription.PURCHASER,
      isRequired: false,
      targetNames: ['purchaserId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: PremiumSubscription.MOSQUE,
      isRequired: false,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
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

class _PremiumSubscriptionModelType extends amplify_core.ModelType<PremiumSubscription> {
  const _PremiumSubscriptionModelType();
  
  @override
  PremiumSubscription fromJson(Map<String, dynamic> jsonData) {
    return PremiumSubscription.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'PremiumSubscription';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [PremiumSubscription] in your schema.
 */
class PremiumSubscriptionModelIdentifier implements amplify_core.ModelIdentifier<PremiumSubscription> {
  final String id;

  /** Create an instance of PremiumSubscriptionModelIdentifier using [id] the primary key. */
  const PremiumSubscriptionModelIdentifier({
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
  String toString() => 'PremiumSubscriptionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PremiumSubscriptionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}
