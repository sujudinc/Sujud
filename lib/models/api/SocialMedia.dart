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


/** This is an auto generated class representing the SocialMedia type in your schema. */
class SocialMedia {
  final String? _facebook;
  final String? _instagram;
  final String? _twitter;
  final String? _youtube;

  String? get facebook {
    return _facebook;
  }
  
  String? get instagram {
    return _instagram;
  }
  
  String? get twitter {
    return _twitter;
  }
  
  String? get youtube {
    return _youtube;
  }
  
  const SocialMedia._internal({facebook, instagram, twitter, youtube}): _facebook = facebook, _instagram = instagram, _twitter = twitter, _youtube = youtube;
  
  factory SocialMedia({String? facebook, String? instagram, String? twitter, String? youtube}) {
    return SocialMedia._internal(
      facebook: facebook,
      instagram: instagram,
      twitter: twitter,
      youtube: youtube);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialMedia &&
      _facebook == other._facebook &&
      _instagram == other._instagram &&
      _twitter == other._twitter &&
      _youtube == other._youtube;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("SocialMedia {");
    buffer.write("facebook=" + "$_facebook" + ", ");
    buffer.write("instagram=" + "$_instagram" + ", ");
    buffer.write("twitter=" + "$_twitter" + ", ");
    buffer.write("youtube=" + "$_youtube");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  SocialMedia copyWith({String? facebook, String? instagram, String? twitter, String? youtube}) {
    return SocialMedia._internal(
      facebook: facebook ?? this.facebook,
      instagram: instagram ?? this.instagram,
      twitter: twitter ?? this.twitter,
      youtube: youtube ?? this.youtube);
  }
  
  SocialMedia copyWithModelFieldValues({
    ModelFieldValue<String?>? facebook,
    ModelFieldValue<String?>? instagram,
    ModelFieldValue<String?>? twitter,
    ModelFieldValue<String?>? youtube
  }) {
    return SocialMedia._internal(
      facebook: facebook == null ? this.facebook : facebook.value,
      instagram: instagram == null ? this.instagram : instagram.value,
      twitter: twitter == null ? this.twitter : twitter.value,
      youtube: youtube == null ? this.youtube : youtube.value
    );
  }
  
  SocialMedia.fromJson(Map<String, dynamic> json)  
    : _facebook = json['facebook'],
      _instagram = json['instagram'],
      _twitter = json['twitter'],
      _youtube = json['youtube'];
  
  Map<String, dynamic> toJson() => {
    'facebook': _facebook, 'instagram': _instagram, 'twitter': _twitter, 'youtube': _youtube
  };
  
  Map<String, Object?> toMap() => {
    'facebook': _facebook,
    'instagram': _instagram,
    'twitter': _twitter,
    'youtube': _youtube
  };

  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "SocialMedia";
    modelSchemaDefinition.pluralName = "SocialMedias";
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'facebook',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'instagram',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'twitter',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.customTypeField(
      fieldName: 'youtube',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}