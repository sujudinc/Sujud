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
import 'package:collection/collection.dart';

// 🌎 Project imports:
import 'ModelProvider.dart';

/** This is an auto generated class representing the Announcement type in your schema. */
class Announcement extends amplify_core.Model {
  static const classType = const _AnnouncementModelType();
  final String id;
  final String? _title;
  final String? _body;
  final List<String>? _images;
  final List<Bookmark>? _bookmarks;
  final List<Like>? _likes;
  final List<Comment>? _comments;
  final User? _creator;
  final Mosque? _mosque;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  AnnouncementModelIdentifier get modelIdentifier {
      return AnnouncementModelIdentifier(
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
  
  String get body {
    try {
      return _body!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get images {
    return _images;
  }
  
  List<Bookmark>? get bookmarks {
    return _bookmarks;
  }
  
  List<Like>? get likes {
    return _likes;
  }
  
  List<Comment>? get comments {
    return _comments;
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
  
  const Announcement._internal({required this.id, required title, required body, images, bookmarks, likes, comments, required creator, required mosque, createdAt, updatedAt}): _title = title, _body = body, _images = images, _bookmarks = bookmarks, _likes = likes, _comments = comments, _creator = creator, _mosque = mosque, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Announcement({String? id, required String title, required String body, List<String>? images, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, required User creator, required Mosque mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Announcement._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      title: title,
      body: body,
      images: images != null ? List<String>.unmodifiable(images) : images,
      bookmarks: bookmarks != null ? List<Bookmark>.unmodifiable(bookmarks) : bookmarks,
      likes: likes != null ? List<Like>.unmodifiable(likes) : likes,
      comments: comments != null ? List<Comment>.unmodifiable(comments) : comments,
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
    return other is Announcement &&
      id == other.id &&
      _title == other._title &&
      _body == other._body &&
      DeepCollectionEquality().equals(_images, other._images) &&
      DeepCollectionEquality().equals(_bookmarks, other._bookmarks) &&
      DeepCollectionEquality().equals(_likes, other._likes) &&
      DeepCollectionEquality().equals(_comments, other._comments) &&
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
    
    buffer.write("Announcement {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("title=" + "$_title" + ", ");
    buffer.write("body=" + "$_body" + ", ");
    buffer.write("images=" + (_images != null ? _images!.toString() : "null") + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("mosque=" + (_mosque != null ? _mosque!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Announcement copyWith({String? title, String? body, List<String>? images, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, User? creator, Mosque? mosque, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Announcement._internal(
      id: id,
      title: title ?? this.title,
      body: body ?? this.body,
      images: images ?? this.images,
      bookmarks: bookmarks ?? this.bookmarks,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      creator: creator ?? this.creator,
      mosque: mosque ?? this.mosque,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Announcement copyWithModelFieldValues({
    ModelFieldValue<String>? title,
    ModelFieldValue<String>? body,
    ModelFieldValue<List<String>?>? images,
    ModelFieldValue<List<Bookmark>?>? bookmarks,
    ModelFieldValue<List<Like>?>? likes,
    ModelFieldValue<List<Comment>?>? comments,
    ModelFieldValue<User>? creator,
    ModelFieldValue<Mosque>? mosque,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Announcement._internal(
      id: id,
      title: title == null ? this.title : title.value,
      body: body == null ? this.body : body.value,
      images: images == null ? this.images : images.value,
      bookmarks: bookmarks == null ? this.bookmarks : bookmarks.value,
      likes: likes == null ? this.likes : likes.value,
      comments: comments == null ? this.comments : comments.value,
      creator: creator == null ? this.creator : creator.value,
      mosque: mosque == null ? this.mosque : mosque.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Announcement.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _title = json['title'],
      _body = json['body'],
      _images = json['images']?.cast<String>(),
      _bookmarks = json['bookmarks'] is List
        ? (json['bookmarks'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Bookmark.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _likes = json['likes'] is List
        ? (json['likes'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Like.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _comments = json['comments'] is List
        ? (json['comments'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Comment.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
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
    'id': id, 'title': _title, 'body': _body, 'images': _images, 'bookmarks': _bookmarks?.map((Bookmark? e) => e?.toJson()).toList(), 'likes': _likes?.map((Like? e) => e?.toJson()).toList(), 'comments': _comments?.map((Comment? e) => e?.toJson()).toList(), 'creator': _creator?.toJson(), 'mosque': _mosque?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'title': _title,
    'body': _body,
    'images': _images,
    'bookmarks': _bookmarks,
    'likes': _likes,
    'comments': _comments,
    'creator': _creator,
    'mosque': _mosque,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<AnnouncementModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<AnnouncementModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final TITLE = amplify_core.QueryField(fieldName: "title");
  static final BODY = amplify_core.QueryField(fieldName: "body");
  static final IMAGES = amplify_core.QueryField(fieldName: "images");
  static final BOOKMARKS = amplify_core.QueryField(
    fieldName: "bookmarks",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Bookmark'));
  static final LIKES = amplify_core.QueryField(
    fieldName: "likes",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Like'));
  static final COMMENTS = amplify_core.QueryField(
    fieldName: "comments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final MOSQUE = amplify_core.QueryField(
    fieldName: "mosque",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Announcement";
    modelSchemaDefinition.pluralName = "Announcements";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "creatorId",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE
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
      key: Announcement.TITLE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Announcement.BODY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Announcement.IMAGES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Announcement.BOOKMARKS,
      isRequired: false,
      ofModelName: 'Bookmark',
      associatedKey: Bookmark.ANNOUNCEMENT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Announcement.LIKES,
      isRequired: false,
      ofModelName: 'Like',
      associatedKey: Like.ANNOUNCEMENT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Announcement.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.ANNOUNCEMENT
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Announcement.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Announcement.MOSQUE,
      isRequired: true,
      targetNames: ['mosqueId'],
      ofModelName: 'Mosque'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Announcement.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Announcement.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _AnnouncementModelType extends amplify_core.ModelType<Announcement> {
  const _AnnouncementModelType();
  
  @override
  Announcement fromJson(Map<String, dynamic> jsonData) {
    return Announcement.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Announcement';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Announcement] in your schema.
 */
class AnnouncementModelIdentifier implements amplify_core.ModelIdentifier<Announcement> {
  final String id;

  /** Create an instance of AnnouncementModelIdentifier using [id] the primary key. */
  const AnnouncementModelIdentifier({
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
  String toString() => 'AnnouncementModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is AnnouncementModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}
