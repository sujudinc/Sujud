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


/** This is an auto generated class representing the Donation type in your schema. */
class Donation extends amplify_core.Model {
  static const classType = const _DonationModelType();
  final String id;
  final double? _amount;
  final String? _currency;
  final bool? _isAnonymous;
  final User? _donor;
  final FundraisingCampaign? _fundraisingCampaign;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  DonationModelIdentifier get modelIdentifier {
      return DonationModelIdentifier(
        id: id
      );
  }
  
  double get amount {
    try {
      return _amount!;
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
  
  bool get isAnonymous {
    try {
      return _isAnonymous!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  User get donor {
    try {
      return _donor!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  FundraisingCampaign? get fundraisingCampaign {
    return _fundraisingCampaign;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Donation._internal({required this.id, required amount, required currency, required isAnonymous, required donor, fundraisingCampaign, createdAt, updatedAt}): _amount = amount, _currency = currency, _isAnonymous = isAnonymous, _donor = donor, _fundraisingCampaign = fundraisingCampaign, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Donation({String? id, required double amount, required String currency, required bool isAnonymous, required User donor, FundraisingCampaign? fundraisingCampaign, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Donation._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      amount: amount,
      currency: currency,
      isAnonymous: isAnonymous,
      donor: donor,
      fundraisingCampaign: fundraisingCampaign,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Donation &&
      id == other.id &&
      _amount == other._amount &&
      _currency == other._currency &&
      _isAnonymous == other._isAnonymous &&
      _donor == other._donor &&
      _fundraisingCampaign == other._fundraisingCampaign &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Donation {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("currency=" + "$_currency" + ", ");
    buffer.write("isAnonymous=" + (_isAnonymous != null ? _isAnonymous!.toString() : "null") + ", ");
    buffer.write("donor=" + (_donor != null ? _donor!.toString() : "null") + ", ");
    buffer.write("fundraisingCampaign=" + (_fundraisingCampaign != null ? _fundraisingCampaign!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Donation copyWith({double? amount, String? currency, bool? isAnonymous, User? donor, FundraisingCampaign? fundraisingCampaign, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Donation._internal(
      id: id,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      isAnonymous: isAnonymous ?? this.isAnonymous,
      donor: donor ?? this.donor,
      fundraisingCampaign: fundraisingCampaign ?? this.fundraisingCampaign,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Donation copyWithModelFieldValues({
    ModelFieldValue<double>? amount,
    ModelFieldValue<String>? currency,
    ModelFieldValue<bool>? isAnonymous,
    ModelFieldValue<User>? donor,
    ModelFieldValue<FundraisingCampaign?>? fundraisingCampaign,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Donation._internal(
      id: id,
      amount: amount == null ? this.amount : amount.value,
      currency: currency == null ? this.currency : currency.value,
      isAnonymous: isAnonymous == null ? this.isAnonymous : isAnonymous.value,
      donor: donor == null ? this.donor : donor.value,
      fundraisingCampaign: fundraisingCampaign == null ? this.fundraisingCampaign : fundraisingCampaign.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Donation.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _amount = (json['amount'] as num?)?.toDouble(),
      _currency = json['currency'],
      _isAnonymous = json['isAnonymous'],
      _donor = json['donor']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['donor']['serializedData']))
        : null,
      _fundraisingCampaign = json['fundraisingCampaign']?['serializedData'] != null
        ? FundraisingCampaign.fromJson(new Map<String, dynamic>.from(json['fundraisingCampaign']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'amount': _amount, 'currency': _currency, 'isAnonymous': _isAnonymous, 'donor': _donor?.toJson(), 'fundraisingCampaign': _fundraisingCampaign?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'amount': _amount,
    'currency': _currency,
    'isAnonymous': _isAnonymous,
    'donor': _donor,
    'fundraisingCampaign': _fundraisingCampaign,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<DonationModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<DonationModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final CURRENCY = amplify_core.QueryField(fieldName: "currency");
  static final ISANONYMOUS = amplify_core.QueryField(fieldName: "isAnonymous");
  static final DONOR = amplify_core.QueryField(
    fieldName: "donor",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final FUNDRAISINGCAMPAIGN = amplify_core.QueryField(
    fieldName: "fundraisingCampaign",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'FundraisingCampaign'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Donation";
    modelSchemaDefinition.pluralName = "Donations";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "donorId",
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
      amplify_core.ModelIndex(fields: const ["donorId"], name: "byDonor"),
      amplify_core.ModelIndex(fields: const ["fundraisingCampaignId"], name: "byFundraisingCampaignId")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Donation.AMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Donation.CURRENCY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Donation.ISANONYMOUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Donation.DONOR,
      isRequired: true,
      targetNames: ['donorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Donation.FUNDRAISINGCAMPAIGN,
      isRequired: false,
      targetNames: ['fundraisingCampaignId'],
      ofModelName: 'FundraisingCampaign'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Donation.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Donation.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _DonationModelType extends amplify_core.ModelType<Donation> {
  const _DonationModelType();
  
  @override
  Donation fromJson(Map<String, dynamic> jsonData) {
    return Donation.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Donation';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Donation] in your schema.
 */
class DonationModelIdentifier implements amplify_core.ModelIdentifier<Donation> {
  final String id;

  /** Create an instance of DonationModelIdentifier using [id] the primary key. */
  const DonationModelIdentifier({
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
  String toString() => 'DonationModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is DonationModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}