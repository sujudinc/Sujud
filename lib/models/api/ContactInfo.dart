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


/** This is an auto generated class representing the ContactInfo type in your schema. */
class ContactInfo {
  final String? _phoneNumber;
  final String? _email;
  final String? _website;
  final SocialMedia? _socialMedia;

  String? get phoneNumber {
    return _phoneNumber;
  }
  
  String? get email {
    return _email;
  }
  
  String? get website {
    return _website;
  }
  
  SocialMedia? get socialMedia {
    return _socialMedia;
  }
  
  const ContactInfo._internal({phoneNumber, email, website, socialMedia}): _phoneNumber = phoneNumber, _email = email, _website = website, _socialMedia = socialMedia;
  
  factory ContactInfo({String? phoneNumber, String? email, String? website, SocialMedia? socialMedia}) {
    return ContactInfo._internal(
      phoneNumber: phoneNumber,
      email: email,
      website: website,
      socialMedia: socialMedia);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactInfo &&
      _phoneNumber == other._phoneNumber &&
      _email == other._email &&
      _website == other._website &&
      _socialMedia == other._socialMedia;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ContactInfo {");
    buffer.write("phoneNumber=" + "$_phoneNumber" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("website=" + "$_website" + ", ");
    buffer.write("socialMedia=" + (_socialMedia != null ? _socialMedia!.toString() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ContactInfo copyWith({String? phoneNumber, String? email, String? website, SocialMedia? socialMedia}) {
    return ContactInfo._internal(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      email: email ?? this.email,
      website: website ?? this.website,
      socialMedia: socialMedia ?? this.socialMedia);
  }
  
  ContactInfo copyWithModelFieldValues({
    ModelFieldValue<String?>? phoneNumber,
    ModelFieldValue<String?>? email,
    ModelFieldValue<String?>? website,
    ModelFieldValue<SocialMedia?>? socialMedia
  }) {
    return ContactInfo._internal(
      phoneNumber: phoneNumber == null ? this.phoneNumber : phoneNumber.value,
      email: email == null ? this.email : email.value,
      website: website == null ? this.website : website.value,
      socialMedia: socialMedia == null ? this.socialMedia : socialMedia.value
    );
  }
  
  ContactInfo.fromJson(Map<String, dynamic> json)  
    : _phoneNumber = json['phoneNumber'],
      _email = json['email'],
      _website = json['website'],
      _socialMedia = json['socialMedia']?['serializedData'] != null
        ? SocialMedia.fromJson(new Map<String, dynamic>.from(json['socialMedia']['serializedData']))
        : null;
  
  Map<String, dynamic> toJson() => {
    'phoneNumber': _phoneNumber, 'email': _email, 'website': _website, 'socialMedia': _socialMedia?.toJson()
  };
  
  Map<String, Object?> toMap() => {
    'phoneNumber': _phoneNumber,
    'email': _email,
    'website': _website,
    'socialMedia': _socialMedia
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ContactInfo";
    modelSchemaDefinition.pluralName = "ContactInfos";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'phoneNumber',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'email',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'website',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'socialMedia',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'SocialMedia')
    ));
  });
}