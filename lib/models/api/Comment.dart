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


/** This is an auto generated class representing the Comment type in your schema. */
class Comment extends amplify_core.Model {
  static const classType = const _CommentModelType();
  final String id;
  final String? _text;
  final Comment? _parentComment;
  final List<Comment>? _subComments;
  final Announcement? _announcement;
  final User? _creator;
  final Mosque? _mosque;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CommentModelIdentifier get modelIdentifier {
      return CommentModelIdentifier(
        id: id
      );
  }
  
  String get text {
    try {
      return _text!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Comment? get parentComment {
    return _parentComment;
  }
  
  List<Comment>? get subComments {
    return _subComments;
  }
  
  Announcement get announcement {
    try {
      return _announcement!;
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
  
  const Comment._internal({required this.id, required text, parentComment, subComments, required announcement, required creator, required mosque, createdAt, updatedAt}): _text = text, _parentComment = parentComment, _subComments = subComments, _announcement = announcement, _creator = creator, _mosque = mosque, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Comment({String? id, required String text, Comment? parentComment, List<Comment>? subComments, required Announcement announcement, required User creator, required Mosque mosque}) {
    return Comment._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      text: text,
      parentComment: parentComment,
      subComments: subComments != null ? List<Comment>.unmodifiable(subComments) : subComments,
      announcement: announcement,
      creator: creator,
      mosque: mosque);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Comment &&
      id == other.id &&
      _text == other._text &&
      _parentComment == other._parentComment &&
      DeepCollectionEquality().equals(_subComments, other._subComments) &&
      _announcement == other._announcement &&
      _creator == other._creator &&
      _mosque == other._mosque;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Comment {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("text=" + "$_text" + ", ");
    buffer.write("parentComment=" + (_parentComment != null ? _parentComment!.toString() : "null") + ", ");
    buffer.write("announcement=" + (_announcement != null ? _announcement!.toString() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Comment copyWith({String? text, Comment? parentComment, List<Comment>? subComments, Announcement? announcement, User? creator, Mosque? mosque}) {
    return Comment._internal(
      id: id,
      text: text ?? this.text,
      parentComment: parentComment ?? this.parentComment,
      subComments: subComments ?? this.subComments,
      announcement: announcement ?? this.announcement,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque);
  }
  
  Comment copyWithModelFieldValues({
    ModelFieldValue<String>? text,
    ModelFieldValue<Comment?>? parentComment,
    ModelFieldValue<List<Comment>?>? subComments,
    ModelFieldValue<Announcement>? announcement,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque
  }) {
    return Comment._internal(
      id: id,
      text: text == null ? this.text : text.value,
      parentComment: parentComment == null ? this.parentComment : parentComment.value,
      subComments: subComments == null ? this.subComments : subComments.value,
      announcement: announcement == null ? this.announcement : announcement.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value
    );
  }
  
  Comment.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _text = json['text'],
      _parentComment = json['parentComment']?['serializedData'] != null
        ? Comment.fromJson(new Map<String, dynamic>.from(json['parentComment']['serializedData']))
        : null,
      _subComments = json['subComments'] is List
        ? (json['subComments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _announcement = json['announcement']?['serializedData'] != null
        ? Announcement.fromJson(new Map<String, dynamic>.from(json['announcement']['serializedData']))
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
    'id': id, 'text': _text, 'parentComment': _parentComment?.toJson(), 'subComments': _subComments?.map((Comment? e) => e?.toJson()).toList(), 'announcement': _announcement?.toJson(), 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'text': _text,
    'parentComment': _parentComment,
    'subComments': _subComments,
    'announcement': _announcement,
    'creator': _creator,
    'mosque': _mosque,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CommentModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CommentModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TEXT = amplify_core.QueryField(fieldName: "text");
  static final PARENTCOMMENT = amplify_core.QueryField(
    fieldName: "parentComment",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final SUBCOMMENTS = amplify_core.QueryField(
    fieldName: "subComments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final ANNOUNCEMENT = amplify_core.QueryField(
    fieldName: "announcement",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Announcement'));
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Comment";
    modelSchemaDefinition.pluralName = "Comments";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "commenterId",
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
      amplify_core.ModelIndex(fields: const ["parentCommentId"], name: "byParentCommentId"),
      amplify_core.ModelIndex(fields: const ["announcementId"], name: "byAnnouncementId"),
      amplify_core.ModelIndex(fields: const ["creatorId"], name: "byCreatorId"),
      amplify_core.ModelIndex(fields: const ["mosqueId"], name: "byMosqueId")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Comment.TEXT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Comment.PARENTCOMMENT,
      isRequired: false,
      targetNames: ['parentCommentId'],
      ofModelName: 'Comment'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Comment.SUBCOMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.PARENTCOMMENT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Comment.ANNOUNCEMENT,
      isRequired: true,
      targetNames: ['announcementId'],
      ofModelName: 'Announcement'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Comment.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Comment.MOSQUE,
      isRequired: true,
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

class _CommentModelType extends amplify_core.ModelType<Comment> {
  const _CommentModelType();
  
  @override
  Comment fromJson(Map<String, dynamic> jsonData) {
    return Comment.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Comment';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Comment] in your schema.
 */
class CommentModelIdentifier implements amplify_core.ModelIdentifier<Comment> {
  final String id;

  /** Create an instance of CommentModelIdentifier using [id] the primary key. */
  const CommentModelIdentifier({
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
  String toString() => 'CommentModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CommentModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}