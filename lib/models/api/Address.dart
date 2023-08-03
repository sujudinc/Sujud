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


/** This is an auto generated class representing the Address type in your schema. */
class Address {
  final String? _addressLine1;
  final String? _addressLine2;
  final String? _addressLine3;
  final String? _city;
  final String? _province;
  final String? _postalCode;
  final String? _country;
  final double? _latitude;
  final double? _longitude;

  String get addressLine1 {
    try {
      return _addressLine1!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get addressLine2 {
    return _addressLine2;
  }
  
  String? get addressLine3 {
    return _addressLine3;
  }
  
  String get city {
    try {
      return _city!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get province {
    try {
      return _province!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get postalCode {
    try {
      return _postalCode!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get country {
    try {
      return _country!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get latitude {
    try {
      return _latitude!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get longitude {
    try {
      return _longitude!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  const Address._internal({required addressLine1, addressLine2, addressLine3, required city, required province, required postalCode, required country, required latitude, required longitude}): _addressLine1 = addressLine1, _addressLine2 = addressLine2, _addressLine3 = addressLine3, _city = city, _province = province, _postalCode = postalCode, _country = country, _latitude = latitude, _longitude = longitude;
  
  factory Address({required String addressLine1, String? addressLine2, String? addressLine3, required String city, required String province, required String postalCode, required String country, required double latitude, required double longitude}) {
    return Address._internal(
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      addressLine3: addressLine3,
      city: city,
      province: province,
      postalCode: postalCode,
      country: country,
      latitude: latitude,
      longitude: longitude);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Address &&
      _addressLine1 == other._addressLine1 &&
      _addressLine2 == other._addressLine2 &&
      _addressLine3 == other._addressLine3 &&
      _city == other._city &&
      _province == other._province &&
      _postalCode == other._postalCode &&
      _country == other._country &&
      _latitude == other._latitude &&
      _longitude == other._longitude;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Address {");
    buffer.write("addressLine1=" + "$_addressLine1" + ", ");
    buffer.write("addressLine2=" + "$_addressLine2" + ", ");
    buffer.write("addressLine3=" + "$_addressLine3" + ", ");
    buffer.write("city=" + "$_city" + ", ");
    buffer.write("province=" + "$_province" + ", ");
    buffer.write("postalCode=" + "$_postalCode" + ", ");
    buffer.write("country=" + "$_country" + ", ");
    buffer.write("latitude=" + (_latitude != null ? _latitude!.toString() : "null") + ", ");
    buffer.write("longitude=" + (_longitude != null ? _longitude!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Address copyWith({String? addressLine1, String? addressLine2, String? addressLine3, String? city, String? province, String? postalCode, String? country, double? latitude, double? longitude}) {
    return Address._internal(
      addressLine1: addressLine1 ?? this.addressLine1,
      addressLine2: addressLine2 ?? this.addressLine2,
      addressLine3: addressLine3 ?? this.addressLine3,
      city: city ?? this.city,
      province: province ?? this.province,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude);
  }
  
  Address copyWithModelFieldValues({
    ModelFieldValue<String>? addressLine1,
    ModelFieldValue<String?>? addressLine2,
    ModelFieldValue<String?>? addressLine3,
    ModelFieldValue<String>? city,
    ModelFieldValue<String>? province,
    ModelFieldValue<String>? postalCode,
    ModelFieldValue<String>? country,
    ModelFieldValue<double>? latitude,
    ModelFieldValue<double>? longitude
  }) {
    return Address._internal(
      addressLine1: addressLine1 == null ? this.addressLine1 : addressLine1.value,
      addressLine2: addressLine2 == null ? this.addressLine2 : addressLine2.value,
      addressLine3: addressLine3 == null ? this.addressLine3 : addressLine3.value,
      city: city == null ? this.city : city.value,
      province: province == null ? this.province : province.value,
      postalCode: postalCode == null ? this.postalCode : postalCode.value,
      country: country == null ? this.country : country.value,
      latitude: latitude == null ? this.latitude : latitude.value,
      longitude: longitude == null ? this.longitude : longitude.value
    );
  }
  
  Address.fromJson(Map<String, dynamic> json)  
    : _addressLine1 = json['addressLine1'],
      _addressLine2 = json['addressLine2'],
      _addressLine3 = json['addressLine3'],
      _city = json['city'],
      _province = json['province'],
      _postalCode = json['postalCode'],
      _country = json['country'],
      _latitude = (json['latitude'] as num?)?.toDouble(),
      _longitude = (json['longitude'] as num?)?.toDouble();
  
  Map<String, dynamic> toJson() => {
    'addressLine1': _addressLine1, 'addressLine2': _addressLine2, 'addressLine3': _addressLine3, 'city': _city, 'province': _province, 'postalCode': _postalCode, 'country': _country, 'latitude': _latitude, 'longitude': _longitude
  };
  
  Map<String, Object?> toMap() => {
    'addressLine1': _addressLine1,
    'addressLine2': _addressLine2,
    'addressLine3': _addressLine3,
    'city': _city,
    'province': _province,
    'postalCode': _postalCode,
    'country': _country,
    'latitude': _latitude,
    'longitude': _longitude
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Address";
    modelSchemaDefinition.pluralName = "Addresses";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'addressLine1',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'addressLine2',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'addressLine3',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'city',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'province',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'postalCode',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'country',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'latitude',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'longitude',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
  });
}