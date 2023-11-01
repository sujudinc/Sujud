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


/** This is an auto generated class representing the Mosque type in your schema. */
class Mosque extends amplify_core.Model {
  static const classType = const _MosqueModelType();
  final String id;
  final String? _name;
  final String? _description;
  final List<String>? _images;
  final Address? _address;
  final Hours? _hours;
  final ContactInfo? _contactInfo;
  final String? _liveVideoUrl;
  final User? _creator;
  final List<MosqueFollowers>? _followers;
  final List<Announcement>? _announcements;
  final List<Class>? _classes;
  final List<Committee>? _committees;
  final List<Gathering>? _gatherings;
  final List<FundraisingCampaign>? _fundraisingCampaigns;
  final List<MonthlyPrayerSchedule>? _monthlyPrayerSchedules;
  final List<Resource>? _resources;
  final List<Service>? _services;
  final List<MosqueSubscription>? _subscriptions;
  final List<VolunteerTask>? _volunteerTasks;
  final List<Bookmark>? _bookmarks;
  final List<Like>? _likes;
  final List<Comment>? _comments;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MosqueModelIdentifier get modelIdentifier {
      return MosqueModelIdentifier(
        id: id
      );
  }
  
  String get name {
    try {
      return _name!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get description {
    try {
      return _description!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String> get images {
    try {
      return _images!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  Hours? get hours {
    return _hours;
  }
  
  ContactInfo get contactInfo {
    try {
      return _contactInfo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get liveVideoUrl {
    return _liveVideoUrl;
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
  
  List<MosqueFollowers>? get followers {
    return _followers;
  }
  
  List<Announcement>? get announcements {
    return _announcements;
  }
  
  List<Class>? get classes {
    return _classes;
  }
  
  List<Committee>? get committees {
    return _committees;
  }
  
  List<Gathering>? get gatherings {
    return _gatherings;
  }
  
  List<FundraisingCampaign>? get fundraisingCampaigns {
    return _fundraisingCampaigns;
  }
  
  List<MonthlyPrayerSchedule>? get monthlyPrayerSchedules {
    return _monthlyPrayerSchedules;
  }
  
  List<Resource>? get resources {
    return _resources;
  }
  
  List<Service>? get services {
    return _services;
  }
  
  List<MosqueSubscription>? get subscriptions {
    return _subscriptions;
  }
  
  List<VolunteerTask>? get volunteerTasks {
    return _volunteerTasks;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Mosque._internal({required this.id, required name, required description, required images, required address, hours, required contactInfo, liveVideoUrl, required creator, followers, announcements, classes, committees, gatherings, fundraisingCampaigns, monthlyPrayerSchedules, resources, services, subscriptions, volunteerTasks, bookmarks, likes, comments, createdAt, updatedAt}): _name = name, _description = description, _images = images, _address = address, _hours = hours, _contactInfo = contactInfo, _liveVideoUrl = liveVideoUrl, _creator = creator, _followers = followers, _announcements = announcements, _classes = classes, _committees = committees, _gatherings = gatherings, _fundraisingCampaigns = fundraisingCampaigns, _monthlyPrayerSchedules = monthlyPrayerSchedules, _resources = resources, _services = services, _subscriptions = subscriptions, _volunteerTasks = volunteerTasks, _bookmarks = bookmarks, _likes = likes, _comments = comments, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Mosque({String? id, required String name, required String description, required List<String> images, required Address address, Hours? hours, required ContactInfo contactInfo, String? liveVideoUrl, required User creator, List<MosqueFollowers>? followers, List<Announcement>? announcements, List<Class>? classes, List<Committee>? committees, List<Gathering>? gatherings, List<FundraisingCampaign>? fundraisingCampaigns, List<MonthlyPrayerSchedule>? monthlyPrayerSchedules, List<Resource>? resources, List<Service>? services, List<MosqueSubscription>? subscriptions, List<VolunteerTask>? volunteerTasks, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Mosque._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      name: name,
      description: description,
      images: images != null ? List<String>.unmodifiable(images) : images,
      address: address,
      hours: hours,
      contactInfo: contactInfo,
      liveVideoUrl: liveVideoUrl,
      creator: creator,
      followers: followers != null ? List<MosqueFollowers>.unmodifiable(followers) : followers,
      announcements: announcements != null ? List<Announcement>.unmodifiable(announcements) : announcements,
      classes: classes != null ? List<Class>.unmodifiable(classes) : classes,
      committees: committees != null ? List<Committee>.unmodifiable(committees) : committees,
      gatherings: gatherings != null ? List<Gathering>.unmodifiable(gatherings) : gatherings,
      fundraisingCampaigns: fundraisingCampaigns != null ? List<FundraisingCampaign>.unmodifiable(fundraisingCampaigns) : fundraisingCampaigns,
      monthlyPrayerSchedules: monthlyPrayerSchedules != null ? List<MonthlyPrayerSchedule>.unmodifiable(monthlyPrayerSchedules) : monthlyPrayerSchedules,
      resources: resources != null ? List<Resource>.unmodifiable(resources) : resources,
      services: services != null ? List<Service>.unmodifiable(services) : services,
      subscriptions: subscriptions != null ? List<MosqueSubscription>.unmodifiable(subscriptions) : subscriptions,
      volunteerTasks: volunteerTasks != null ? List<VolunteerTask>.unmodifiable(volunteerTasks) : volunteerTasks,
      bookmarks: bookmarks != null ? List<Bookmark>.unmodifiable(bookmarks) : bookmarks,
      likes: likes != null ? List<Like>.unmodifiable(likes) : likes,
      comments: comments != null ? List<Comment>.unmodifiable(comments) : comments,
      createdAt: createdAt,
      updatedAt: updatedAt);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mosque &&
      id == other.id &&
      _name == other._name &&
      _description == other._description &&
      DeepCollectionEquality().equals(_images, other._images) &&
      _address == other._address &&
      _hours == other._hours &&
      _contactInfo == other._contactInfo &&
      _liveVideoUrl == other._liveVideoUrl &&
      _creator == other._creator &&
      DeepCollectionEquality().equals(_followers, other._followers) &&
      DeepCollectionEquality().equals(_announcements, other._announcements) &&
      DeepCollectionEquality().equals(_classes, other._classes) &&
      DeepCollectionEquality().equals(_committees, other._committees) &&
      DeepCollectionEquality().equals(_gatherings, other._gatherings) &&
      DeepCollectionEquality().equals(_fundraisingCampaigns, other._fundraisingCampaigns) &&
      DeepCollectionEquality().equals(_monthlyPrayerSchedules, other._monthlyPrayerSchedules) &&
      DeepCollectionEquality().equals(_resources, other._resources) &&
      DeepCollectionEquality().equals(_services, other._services) &&
      DeepCollectionEquality().equals(_subscriptions, other._subscriptions) &&
      DeepCollectionEquality().equals(_volunteerTasks, other._volunteerTasks) &&
      DeepCollectionEquality().equals(_bookmarks, other._bookmarks) &&
      DeepCollectionEquality().equals(_likes, other._likes) &&
      DeepCollectionEquality().equals(_comments, other._comments) &&
      _createdAt == other._createdAt &&
      _updatedAt == other._updatedAt;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Mosque {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("name=" + "$_name" + ", ");
    buffer.write("description=" + "$_description" + ", ");
    buffer.write("images=" + (_images != null ? _images!.toString() : "null") + ", ");
    buffer.write("address=" + (_address != null ? _address!.toString() : "null") + ", ");
    buffer.write("hours=" + (_hours != null ? _hours!.toString() : "null") + ", ");
    buffer.write("contactInfo=" + (_contactInfo != null ? _contactInfo!.toString() : "null") + ", ");
    buffer.write("liveVideoUrl=" + "$_liveVideoUrl" + ", ");
    buffer.write("creator=" + (_creator != null ? _creator!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Mosque copyWith({String? name, String? description, List<String>? images, Address? address, Hours? hours, ContactInfo? contactInfo, String? liveVideoUrl, User? creator, List<MosqueFollowers>? followers, List<Announcement>? announcements, List<Class>? classes, List<Committee>? committees, List<Gathering>? gatherings, List<FundraisingCampaign>? fundraisingCampaigns, List<MonthlyPrayerSchedule>? monthlyPrayerSchedules, List<Resource>? resources, List<Service>? services, List<MosqueSubscription>? subscriptions, List<VolunteerTask>? volunteerTasks, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return Mosque._internal(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      images: images ?? this.images,
      address: address ?? this.address,
      hours: hours ?? this.hours,
      contactInfo: contactInfo ?? this.contactInfo,
      liveVideoUrl: liveVideoUrl ?? this.liveVideoUrl,
      creator: creator ?? this.creator,
      followers: followers ?? this.followers,
      announcements: announcements ?? this.announcements,
      classes: classes ?? this.classes,
      committees: committees ?? this.committees,
      gatherings: gatherings ?? this.gatherings,
      fundraisingCampaigns: fundraisingCampaigns ?? this.fundraisingCampaigns,
      monthlyPrayerSchedules: monthlyPrayerSchedules ?? this.monthlyPrayerSchedules,
      resources: resources ?? this.resources,
      services: services ?? this.services,
      subscriptions: subscriptions ?? this.subscriptions,
      volunteerTasks: volunteerTasks ?? this.volunteerTasks,
      bookmarks: bookmarks ?? this.bookmarks,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  Mosque copyWithModelFieldValues({
    ModelFieldValue<String>? name,
    ModelFieldValue<String>? description,
    ModelFieldValue<List<String>?>? images,
    ModelFieldValue<Address>? address,
    ModelFieldValue<Hours?>? hours,
    ModelFieldValue<ContactInfo>? contactInfo,
    ModelFieldValue<String?>? liveVideoUrl,
    ModelFieldValue<User>? creator,
    ModelFieldValue<List<MosqueFollowers>?>? followers,
    ModelFieldValue<List<Announcement>?>? announcements,
    ModelFieldValue<List<Class>?>? classes,
    ModelFieldValue<List<Committee>?>? committees,
    ModelFieldValue<List<Gathering>?>? gatherings,
    ModelFieldValue<List<FundraisingCampaign>?>? fundraisingCampaigns,
    ModelFieldValue<List<MonthlyPrayerSchedule>?>? monthlyPrayerSchedules,
    ModelFieldValue<List<Resource>?>? resources,
    ModelFieldValue<List<Service>?>? services,
    ModelFieldValue<List<MosqueSubscription>?>? subscriptions,
    ModelFieldValue<List<VolunteerTask>?>? volunteerTasks,
    ModelFieldValue<List<Bookmark>?>? bookmarks,
    ModelFieldValue<List<Like>?>? likes,
    ModelFieldValue<List<Comment>?>? comments,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return Mosque._internal(
      id: id,
      name: name == null ? this.name : name.value,
      description: description == null ? this.description : description.value,
      images: images == null ? this.images : images.value,
      address: address == null ? this.address : address.value,
      hours: hours == null ? this.hours : hours.value,
      contactInfo: contactInfo == null ? this.contactInfo : contactInfo.value,
      liveVideoUrl: liveVideoUrl == null ? this.liveVideoUrl : liveVideoUrl.value,
      creator: creator == null ? this.creator : creator.value,
      followers: followers == null ? this.followers : followers.value,
      announcements: announcements == null ? this.announcements : announcements.value,
      classes: classes == null ? this.classes : classes.value,
      committees: committees == null ? this.committees : committees.value,
      gatherings: gatherings == null ? this.gatherings : gatherings.value,
      fundraisingCampaigns: fundraisingCampaigns == null ? this.fundraisingCampaigns : fundraisingCampaigns.value,
      monthlyPrayerSchedules: monthlyPrayerSchedules == null ? this.monthlyPrayerSchedules : monthlyPrayerSchedules.value,
      resources: resources == null ? this.resources : resources.value,
      services: services == null ? this.services : services.value,
      subscriptions: subscriptions == null ? this.subscriptions : subscriptions.value,
      volunteerTasks: volunteerTasks == null ? this.volunteerTasks : volunteerTasks.value,
      bookmarks: bookmarks == null ? this.bookmarks : bookmarks.value,
      likes: likes == null ? this.likes : likes.value,
      comments: comments == null ? this.comments : comments.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  Mosque.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _name = json['name'],
      _description = json['description'],
      _images = json['images']?.cast<String>(),
      _address = json['address']?['serializedData'] != null
        ? Address.fromJson(new Map<String, dynamic>.from(json['address']['serializedData']))
        : null,
      _hours = json['hours']?['serializedData'] != null
        ? Hours.fromJson(new Map<String, dynamic>.from(json['hours']['serializedData']))
        : null,
      _contactInfo = json['contactInfo']?['serializedData'] != null
        ? ContactInfo.fromJson(new Map<String, dynamic>.from(json['contactInfo']['serializedData']))
        : null,
      _liveVideoUrl = json['liveVideoUrl'],
      _creator = json['creator']?['serializedData'] != null
        ? User.fromJson(new Map<String, dynamic>.from(json['creator']['serializedData']))
        : null,
      _followers = json['followers'] is List
        ? (json['followers'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MosqueFollowers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _announcements = json['announcements'] is List
        ? (json['announcements'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Announcement.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _classes = json['classes'] is List
        ? (json['classes'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Class.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _committees = json['committees'] is List
        ? (json['committees'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Committee.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _gatherings = json['gatherings'] is List
        ? (json['gatherings'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Gathering.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _fundraisingCampaigns = json['fundraisingCampaigns'] is List
        ? (json['fundraisingCampaigns'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FundraisingCampaign.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _monthlyPrayerSchedules = json['monthlyPrayerSchedules'] is List
        ? (json['monthlyPrayerSchedules'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MonthlyPrayerSchedule.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _resources = json['resources'] is List
        ? (json['resources'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Resource.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _services = json['services'] is List
        ? (json['services'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Service.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _subscriptions = json['subscriptions'] is List
        ? (json['subscriptions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MosqueSubscription.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _volunteerTasks = json['volunteerTasks'] is List
        ? (json['volunteerTasks'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => VolunteerTask.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
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
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'name': _name, 'description': _description, 'images': _images, 'address': _address?.toJson(), 'hours': _hours?.toJson(), 'contactInfo': _contactInfo?.toJson(), 'liveVideoUrl': _liveVideoUrl, 'creator': _creator?.toJson(), 'followers': _followers?.map((MosqueFollowers? e) => e?.toJson()).toList(), 'announcements': _announcements?.map((Announcement? e) => e?.toJson()).toList(), 'classes': _classes?.map((Class? e) => e?.toJson()).toList(), 'committees': _committees?.map((Committee? e) => e?.toJson()).toList(), 'gatherings': _gatherings?.map((Gathering? e) => e?.toJson()).toList(), 'fundraisingCampaigns': _fundraisingCampaigns?.map((FundraisingCampaign? e) => e?.toJson()).toList(), 'monthlyPrayerSchedules': _monthlyPrayerSchedules?.map((MonthlyPrayerSchedule? e) => e?.toJson()).toList(), 'resources': _resources?.map((Resource? e) => e?.toJson()).toList(), 'services': _services?.map((Service? e) => e?.toJson()).toList(), 'subscriptions': _subscriptions?.map((MosqueSubscription? e) => e?.toJson()).toList(), 'volunteerTasks': _volunteerTasks?.map((VolunteerTask? e) => e?.toJson()).toList(), 'bookmarks': _bookmarks?.map((Bookmark? e) => e?.toJson()).toList(), 'likes': _likes?.map((Like? e) => e?.toJson()).toList(), 'comments': _comments?.map((Comment? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'name': _name,
    'description': _description,
    'images': _images,
    'address': _address,
    'hours': _hours,
    'contactInfo': _contactInfo,
    'liveVideoUrl': _liveVideoUrl,
    'creator': _creator,
    'followers': _followers,
    'announcements': _announcements,
    'classes': _classes,
    'committees': _committees,
    'gatherings': _gatherings,
    'fundraisingCampaigns': _fundraisingCampaigns,
    'monthlyPrayerSchedules': _monthlyPrayerSchedules,
    'resources': _resources,
    'services': _services,
    'subscriptions': _subscriptions,
    'volunteerTasks': _volunteerTasks,
    'bookmarks': _bookmarks,
    'likes': _likes,
    'comments': _comments,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<MosqueModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<MosqueModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NAME = amplify_core.QueryField(fieldName: "name");
  static final DESCRIPTION = amplify_core.QueryField(fieldName: "description");
  static final IMAGES = amplify_core.QueryField(fieldName: "images");
  static final ADDRESS = amplify_core.QueryField(fieldName: "address");
  static final HOURS = amplify_core.QueryField(fieldName: "hours");
  static final CONTACTINFO = amplify_core.QueryField(fieldName: "contactInfo");
  static final LIVEVIDEOURL = amplify_core.QueryField(fieldName: "liveVideoUrl");
  static final CREATOR = amplify_core.QueryField(
    fieldName: "creator",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'User'));
  static final FOLLOWERS = amplify_core.QueryField(
    fieldName: "followers",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MosqueFollowers'));
  static final ANNOUNCEMENTS = amplify_core.QueryField(
    fieldName: "announcements",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Announcement'));
  static final CLASSES = amplify_core.QueryField(
    fieldName: "classes",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Class'));
  static final COMMITTEES = amplify_core.QueryField(
    fieldName: "committees",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Committee'));
  static final GATHERINGS = amplify_core.QueryField(
    fieldName: "gatherings",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Gathering'));
  static final FUNDRAISINGCAMPAIGNS = amplify_core.QueryField(
    fieldName: "fundraisingCampaigns",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'FundraisingCampaign'));
  static final MONTHLYPRAYERSCHEDULES = amplify_core.QueryField(
    fieldName: "monthlyPrayerSchedules",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MonthlyPrayerSchedule'));
  static final RESOURCES = amplify_core.QueryField(
    fieldName: "resources",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Resource'));
  static final SERVICES = amplify_core.QueryField(
    fieldName: "services",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Service'));
  static final SUBSCRIPTIONS = amplify_core.QueryField(
    fieldName: "subscriptions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MosqueSubscription'));
  static final VOLUNTEERTASKS = amplify_core.QueryField(
    fieldName: "volunteerTasks",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VolunteerTask'));
  static final BOOKMARKS = amplify_core.QueryField(
    fieldName: "bookmarks",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Bookmark'));
  static final LIKES = amplify_core.QueryField(
    fieldName: "likes",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Like'));
  static final COMMENTS = amplify_core.QueryField(
    fieldName: "comments",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Comment'));
  static final CREATEDAT = amplify_core.QueryField(fieldName: "createdAt");
  static final UPDATEDAT = amplify_core.QueryField(fieldName: "updatedAt");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Mosque";
    modelSchemaDefinition.pluralName = "Mosques";
    
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
      amplify_core.ModelIndex(fields: const ["creatorId"], name: "byCreatorId")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.NAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.DESCRIPTION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.IMAGES,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'address',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Address')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'hours',
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'Hours')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.embedded(
      fieldName: 'contactInfo',
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.embedded, ofCustomTypeName: 'ContactInfo')
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.LIVEVIDEOURL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Mosque.CREATOR,
      isRequired: true,
      targetNames: ['creatorId'],
      ofModelName: 'User'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.FOLLOWERS,
      isRequired: false,
      ofModelName: 'MosqueFollowers',
      associatedKey: MosqueFollowers.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.ANNOUNCEMENTS,
      isRequired: false,
      ofModelName: 'Announcement',
      associatedKey: Announcement.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.CLASSES,
      isRequired: false,
      ofModelName: 'Class',
      associatedKey: Class.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.COMMITTEES,
      isRequired: false,
      ofModelName: 'Committee',
      associatedKey: Committee.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.GATHERINGS,
      isRequired: false,
      ofModelName: 'Gathering',
      associatedKey: Gathering.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.FUNDRAISINGCAMPAIGNS,
      isRequired: false,
      ofModelName: 'FundraisingCampaign',
      associatedKey: FundraisingCampaign.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.MONTHLYPRAYERSCHEDULES,
      isRequired: false,
      ofModelName: 'MonthlyPrayerSchedule',
      associatedKey: MonthlyPrayerSchedule.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.RESOURCES,
      isRequired: false,
      ofModelName: 'Resource',
      associatedKey: Resource.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.SERVICES,
      isRequired: false,
      ofModelName: 'Service',
      associatedKey: Service.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.SUBSCRIPTIONS,
      isRequired: false,
      ofModelName: 'MosqueSubscription',
      associatedKey: MosqueSubscription.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.VOLUNTEERTASKS,
      isRequired: false,
      ofModelName: 'VolunteerTask',
      associatedKey: VolunteerTask.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.BOOKMARKS,
      isRequired: false,
      ofModelName: 'Bookmark',
      associatedKey: Bookmark.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.LIKES,
      isRequired: false,
      ofModelName: 'Like',
      associatedKey: Like.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Mosque.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.MOSQUE
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mosque.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _MosqueModelType extends amplify_core.ModelType<Mosque> {
  const _MosqueModelType();
  
  @override
  Mosque fromJson(Map<String, dynamic> jsonData) {
    return Mosque.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Mosque';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Mosque] in your schema.
 */
class MosqueModelIdentifier implements amplify_core.ModelIdentifier<Mosque> {
  final String id;

  /** Create an instance of MosqueModelIdentifier using [id] the primary key. */
  const MosqueModelIdentifier({
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
  String toString() => 'MosqueModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MosqueModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}