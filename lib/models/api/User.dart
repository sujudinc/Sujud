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


/** This is an auto generated class representing the User type in your schema. */
class User extends amplify_core.Model {
  static const classType = const _UserModelType();
  final String id;
  final String? _selfie;
  final String? _firstName;
  final String? _lastName;
  final String? _email;
  final String? _phone;
  final UserType? _type;
  final UserStatus? _status;
  final String? _stripeCustomerId;
  final List<Announcement>? _createdAnnouncements;
  final List<Class>? _createdClasses;
  final List<Committee>? _createdCommittees;
  final List<Gathering>? _createdGatherings;
  final List<FundraisingCampaign>? _createdFundraisingCampaigns;
  final List<MonthlyPrayerSchedule>? _createdMonthlyPrayerSchedules;
  final List<Mosque>? _createdMosques;
  final List<Resource>? _createdResources;
  final List<Service>? _createdServices;
  final List<VolunteerTask>? _createdVolunteerTasks;
  final List<Donation>? _donations;
  final List<CommitteeMembers>? _committees;
  final List<GatheringAttendees>? _gatherings;
  final List<Class>? _instructingClasses;
  final List<MosqueFollowers>? _mosques;
  final List<MosqueSubscription>? _purchasedSubscriptions;
  final List<VolunteerTaskUser>? _volunteerTasks;
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
  
  UserModelIdentifier get modelIdentifier {
      return UserModelIdentifier(
        id: id
      );
  }
  
  String? get selfie {
    return _selfie;
  }
  
  String get firstName {
    try {
      return _firstName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get lastName {
    try {
      return _lastName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get email {
    try {
      return _email!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get phone {
    return _phone;
  }
  
  UserType get type {
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
  
  UserStatus get status {
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
  
  String? get stripeCustomerId {
    return _stripeCustomerId;
  }
  
  List<Announcement>? get createdAnnouncements {
    return _createdAnnouncements;
  }
  
  List<Class>? get createdClasses {
    return _createdClasses;
  }
  
  List<Committee>? get createdCommittees {
    return _createdCommittees;
  }
  
  List<Gathering>? get createdGatherings {
    return _createdGatherings;
  }
  
  List<FundraisingCampaign>? get createdFundraisingCampaigns {
    return _createdFundraisingCampaigns;
  }
  
  List<MonthlyPrayerSchedule>? get createdMonthlyPrayerSchedules {
    return _createdMonthlyPrayerSchedules;
  }
  
  List<Mosque>? get createdMosques {
    return _createdMosques;
  }
  
  List<Resource>? get createdResources {
    return _createdResources;
  }
  
  List<Service>? get createdServices {
    return _createdServices;
  }
  
  List<VolunteerTask>? get createdVolunteerTasks {
    return _createdVolunteerTasks;
  }
  
  List<Donation>? get donations {
    return _donations;
  }
  
  List<CommitteeMembers>? get committees {
    return _committees;
  }
  
  List<GatheringAttendees>? get gatherings {
    return _gatherings;
  }
  
  List<Class>? get instructingClasses {
    return _instructingClasses;
  }
  
  List<MosqueFollowers>? get mosques {
    return _mosques;
  }
  
  List<MosqueSubscription>? get purchasedSubscriptions {
    return _purchasedSubscriptions;
  }
  
  List<VolunteerTaskUser>? get volunteerTasks {
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
  
  const User._internal({required this.id, selfie, required firstName, required lastName, required email, phone, required type, required status, stripeCustomerId, createdAnnouncements, createdClasses, createdCommittees, createdGatherings, createdFundraisingCampaigns, createdMonthlyPrayerSchedules, createdMosques, createdResources, createdServices, createdVolunteerTasks, donations, committees, gatherings, instructingClasses, mosques, purchasedSubscriptions, volunteerTasks, bookmarks, likes, comments, createdAt, updatedAt}): _selfie = selfie, _firstName = firstName, _lastName = lastName, _email = email, _phone = phone, _type = type, _status = status, _stripeCustomerId = stripeCustomerId, _createdAnnouncements = createdAnnouncements, _createdClasses = createdClasses, _createdCommittees = createdCommittees, _createdGatherings = createdGatherings, _createdFundraisingCampaigns = createdFundraisingCampaigns, _createdMonthlyPrayerSchedules = createdMonthlyPrayerSchedules, _createdMosques = createdMosques, _createdResources = createdResources, _createdServices = createdServices, _createdVolunteerTasks = createdVolunteerTasks, _donations = donations, _committees = committees, _gatherings = gatherings, _instructingClasses = instructingClasses, _mosques = mosques, _purchasedSubscriptions = purchasedSubscriptions, _volunteerTasks = volunteerTasks, _bookmarks = bookmarks, _likes = likes, _comments = comments, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory User({String? id, String? selfie, required String firstName, required String lastName, required String email, String? phone, required UserType type, required UserStatus status, String? stripeCustomerId, List<Announcement>? createdAnnouncements, List<Class>? createdClasses, List<Committee>? createdCommittees, List<Gathering>? createdGatherings, List<FundraisingCampaign>? createdFundraisingCampaigns, List<MonthlyPrayerSchedule>? createdMonthlyPrayerSchedules, List<Mosque>? createdMosques, List<Resource>? createdResources, List<Service>? createdServices, List<VolunteerTask>? createdVolunteerTasks, List<Donation>? donations, List<CommitteeMembers>? committees, List<GatheringAttendees>? gatherings, List<Class>? instructingClasses, List<MosqueFollowers>? mosques, List<MosqueSubscription>? purchasedSubscriptions, List<VolunteerTaskUser>? volunteerTasks, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return User._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      selfie: selfie,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      type: type,
      status: status,
      stripeCustomerId: stripeCustomerId,
      createdAnnouncements: createdAnnouncements != null ? List<Announcement>.unmodifiable(createdAnnouncements) : createdAnnouncements,
      createdClasses: createdClasses != null ? List<Class>.unmodifiable(createdClasses) : createdClasses,
      createdCommittees: createdCommittees != null ? List<Committee>.unmodifiable(createdCommittees) : createdCommittees,
      createdGatherings: createdGatherings != null ? List<Gathering>.unmodifiable(createdGatherings) : createdGatherings,
      createdFundraisingCampaigns: createdFundraisingCampaigns != null ? List<FundraisingCampaign>.unmodifiable(createdFundraisingCampaigns) : createdFundraisingCampaigns,
      createdMonthlyPrayerSchedules: createdMonthlyPrayerSchedules != null ? List<MonthlyPrayerSchedule>.unmodifiable(createdMonthlyPrayerSchedules) : createdMonthlyPrayerSchedules,
      createdMosques: createdMosques != null ? List<Mosque>.unmodifiable(createdMosques) : createdMosques,
      createdResources: createdResources != null ? List<Resource>.unmodifiable(createdResources) : createdResources,
      createdServices: createdServices != null ? List<Service>.unmodifiable(createdServices) : createdServices,
      createdVolunteerTasks: createdVolunteerTasks != null ? List<VolunteerTask>.unmodifiable(createdVolunteerTasks) : createdVolunteerTasks,
      donations: donations != null ? List<Donation>.unmodifiable(donations) : donations,
      committees: committees != null ? List<CommitteeMembers>.unmodifiable(committees) : committees,
      gatherings: gatherings != null ? List<GatheringAttendees>.unmodifiable(gatherings) : gatherings,
      instructingClasses: instructingClasses != null ? List<Class>.unmodifiable(instructingClasses) : instructingClasses,
      mosques: mosques != null ? List<MosqueFollowers>.unmodifiable(mosques) : mosques,
      purchasedSubscriptions: purchasedSubscriptions != null ? List<MosqueSubscription>.unmodifiable(purchasedSubscriptions) : purchasedSubscriptions,
      volunteerTasks: volunteerTasks != null ? List<VolunteerTaskUser>.unmodifiable(volunteerTasks) : volunteerTasks,
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
    return other is User &&
      id == other.id &&
      _selfie == other._selfie &&
      _firstName == other._firstName &&
      _lastName == other._lastName &&
      _email == other._email &&
      _phone == other._phone &&
      _type == other._type &&
      _status == other._status &&
      _stripeCustomerId == other._stripeCustomerId &&
      DeepCollectionEquality().equals(_createdAnnouncements, other._createdAnnouncements) &&
      DeepCollectionEquality().equals(_createdClasses, other._createdClasses) &&
      DeepCollectionEquality().equals(_createdCommittees, other._createdCommittees) &&
      DeepCollectionEquality().equals(_createdGatherings, other._createdGatherings) &&
      DeepCollectionEquality().equals(_createdFundraisingCampaigns, other._createdFundraisingCampaigns) &&
      DeepCollectionEquality().equals(_createdMonthlyPrayerSchedules, other._createdMonthlyPrayerSchedules) &&
      DeepCollectionEquality().equals(_createdMosques, other._createdMosques) &&
      DeepCollectionEquality().equals(_createdResources, other._createdResources) &&
      DeepCollectionEquality().equals(_createdServices, other._createdServices) &&
      DeepCollectionEquality().equals(_createdVolunteerTasks, other._createdVolunteerTasks) &&
      DeepCollectionEquality().equals(_donations, other._donations) &&
      DeepCollectionEquality().equals(_committees, other._committees) &&
      DeepCollectionEquality().equals(_gatherings, other._gatherings) &&
      DeepCollectionEquality().equals(_instructingClasses, other._instructingClasses) &&
      DeepCollectionEquality().equals(_mosques, other._mosques) &&
      DeepCollectionEquality().equals(_purchasedSubscriptions, other._purchasedSubscriptions) &&
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
    
    buffer.write("User {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("selfie=" + "$_selfie" + ", ");
    buffer.write("firstName=" + "$_firstName" + ", ");
    buffer.write("lastName=" + "$_lastName" + ", ");
    buffer.write("email=" + "$_email" + ", ");
    buffer.write("phone=" + "$_phone" + ", ");
    buffer.write("type=" + (_type != null ? amplify_core.enumToString(_type)! : "null") + ", ");
    buffer.write("status=" + (_status != null ? amplify_core.enumToString(_status)! : "null") + ", ");
    buffer.write("stripeCustomerId=" + "$_stripeCustomerId" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  User copyWith({String? selfie, String? firstName, String? lastName, String? email, String? phone, UserType? type, UserStatus? status, String? stripeCustomerId, List<Announcement>? createdAnnouncements, List<Class>? createdClasses, List<Committee>? createdCommittees, List<Gathering>? createdGatherings, List<FundraisingCampaign>? createdFundraisingCampaigns, List<MonthlyPrayerSchedule>? createdMonthlyPrayerSchedules, List<Mosque>? createdMosques, List<Resource>? createdResources, List<Service>? createdServices, List<VolunteerTask>? createdVolunteerTasks, List<Donation>? donations, List<CommitteeMembers>? committees, List<GatheringAttendees>? gatherings, List<Class>? instructingClasses, List<MosqueFollowers>? mosques, List<MosqueSubscription>? purchasedSubscriptions, List<VolunteerTaskUser>? volunteerTasks, List<Bookmark>? bookmarks, List<Like>? likes, List<Comment>? comments, amplify_core.TemporalDateTime? createdAt, amplify_core.TemporalDateTime? updatedAt}) {
    return User._internal(
      id: id,
      selfie: selfie ?? this.selfie,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      type: type ?? this.type,
      status: status ?? this.status,
      stripeCustomerId: stripeCustomerId ?? this.stripeCustomerId,
      createdAnnouncements: createdAnnouncements ?? this.createdAnnouncements,
      createdClasses: createdClasses ?? this.createdClasses,
      createdCommittees: createdCommittees ?? this.createdCommittees,
      createdGatherings: createdGatherings ?? this.createdGatherings,
      createdFundraisingCampaigns: createdFundraisingCampaigns ?? this.createdFundraisingCampaigns,
      createdMonthlyPrayerSchedules: createdMonthlyPrayerSchedules ?? this.createdMonthlyPrayerSchedules,
      createdMosques: createdMosques ?? this.createdMosques,
      createdResources: createdResources ?? this.createdResources,
      createdServices: createdServices ?? this.createdServices,
      createdVolunteerTasks: createdVolunteerTasks ?? this.createdVolunteerTasks,
      donations: donations ?? this.donations,
      committees: committees ?? this.committees,
      gatherings: gatherings ?? this.gatherings,
      instructingClasses: instructingClasses ?? this.instructingClasses,
      mosques: mosques ?? this.mosques,
      purchasedSubscriptions: purchasedSubscriptions ?? this.purchasedSubscriptions,
      volunteerTasks: volunteerTasks ?? this.volunteerTasks,
      bookmarks: bookmarks ?? this.bookmarks,
      likes: likes ?? this.likes,
      comments: comments ?? this.comments,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt);
  }
  
  User copyWithModelFieldValues({
    ModelFieldValue<String?>? selfie,
    ModelFieldValue<String>? firstName,
    ModelFieldValue<String>? lastName,
    ModelFieldValue<String>? email,
    ModelFieldValue<String?>? phone,
    ModelFieldValue<UserType>? type,
    ModelFieldValue<UserStatus>? status,
    ModelFieldValue<String?>? stripeCustomerId,
    ModelFieldValue<List<Announcement>?>? createdAnnouncements,
    ModelFieldValue<List<Class>?>? createdClasses,
    ModelFieldValue<List<Committee>?>? createdCommittees,
    ModelFieldValue<List<Gathering>?>? createdGatherings,
    ModelFieldValue<List<FundraisingCampaign>?>? createdFundraisingCampaigns,
    ModelFieldValue<List<MonthlyPrayerSchedule>?>? createdMonthlyPrayerSchedules,
    ModelFieldValue<List<Mosque>?>? createdMosques,
    ModelFieldValue<List<Resource>?>? createdResources,
    ModelFieldValue<List<Service>?>? createdServices,
    ModelFieldValue<List<VolunteerTask>?>? createdVolunteerTasks,
    ModelFieldValue<List<Donation>?>? donations,
    ModelFieldValue<List<CommitteeMembers>?>? committees,
    ModelFieldValue<List<GatheringAttendees>?>? gatherings,
    ModelFieldValue<List<Class>?>? instructingClasses,
    ModelFieldValue<List<MosqueFollowers>?>? mosques,
    ModelFieldValue<List<MosqueSubscription>?>? purchasedSubscriptions,
    ModelFieldValue<List<VolunteerTaskUser>?>? volunteerTasks,
    ModelFieldValue<List<Bookmark>?>? bookmarks,
    ModelFieldValue<List<Like>?>? likes,
    ModelFieldValue<List<Comment>?>? comments,
    ModelFieldValue<amplify_core.TemporalDateTime?>? createdAt,
    ModelFieldValue<amplify_core.TemporalDateTime?>? updatedAt
  }) {
    return User._internal(
      id: id,
      selfie: selfie == null ? this.selfie : selfie.value,
      firstName: firstName == null ? this.firstName : firstName.value,
      lastName: lastName == null ? this.lastName : lastName.value,
      email: email == null ? this.email : email.value,
      phone: phone == null ? this.phone : phone.value,
      type: type == null ? this.type : type.value,
      status: status == null ? this.status : status.value,
      stripeCustomerId: stripeCustomerId == null ? this.stripeCustomerId : stripeCustomerId.value,
      createdAnnouncements: createdAnnouncements == null ? this.createdAnnouncements : createdAnnouncements.value,
      createdClasses: createdClasses == null ? this.createdClasses : createdClasses.value,
      createdCommittees: createdCommittees == null ? this.createdCommittees : createdCommittees.value,
      createdGatherings: createdGatherings == null ? this.createdGatherings : createdGatherings.value,
      createdFundraisingCampaigns: createdFundraisingCampaigns == null ? this.createdFundraisingCampaigns : createdFundraisingCampaigns.value,
      createdMonthlyPrayerSchedules: createdMonthlyPrayerSchedules == null ? this.createdMonthlyPrayerSchedules : createdMonthlyPrayerSchedules.value,
      createdMosques: createdMosques == null ? this.createdMosques : createdMosques.value,
      createdResources: createdResources == null ? this.createdResources : createdResources.value,
      createdServices: createdServices == null ? this.createdServices : createdServices.value,
      createdVolunteerTasks: createdVolunteerTasks == null ? this.createdVolunteerTasks : createdVolunteerTasks.value,
      donations: donations == null ? this.donations : donations.value,
      committees: committees == null ? this.committees : committees.value,
      gatherings: gatherings == null ? this.gatherings : gatherings.value,
      instructingClasses: instructingClasses == null ? this.instructingClasses : instructingClasses.value,
      mosques: mosques == null ? this.mosques : mosques.value,
      purchasedSubscriptions: purchasedSubscriptions == null ? this.purchasedSubscriptions : purchasedSubscriptions.value,
      volunteerTasks: volunteerTasks == null ? this.volunteerTasks : volunteerTasks.value,
      bookmarks: bookmarks == null ? this.bookmarks : bookmarks.value,
      likes: likes == null ? this.likes : likes.value,
      comments: comments == null ? this.comments : comments.value,
      createdAt: createdAt == null ? this.createdAt : createdAt.value,
      updatedAt: updatedAt == null ? this.updatedAt : updatedAt.value
    );
  }
  
  User.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _selfie = json['selfie'],
      _firstName = json['firstName'],
      _lastName = json['lastName'],
      _email = json['email'],
      _phone = json['phone'],
      _type = amplify_core.enumFromString<UserType>(json['type'], UserType.values),
      _status = amplify_core.enumFromString<UserStatus>(json['status'], UserStatus.values),
      _stripeCustomerId = json['stripeCustomerId'],
      _createdAnnouncements = json['createdAnnouncements'] is List
        ? (json['createdAnnouncements'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Announcement.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdClasses = json['createdClasses'] is List
        ? (json['createdClasses'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Class.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdCommittees = json['createdCommittees'] is List
        ? (json['createdCommittees'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Committee.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdGatherings = json['createdGatherings'] is List
        ? (json['createdGatherings'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Gathering.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdFundraisingCampaigns = json['createdFundraisingCampaigns'] is List
        ? (json['createdFundraisingCampaigns'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => FundraisingCampaign.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdMonthlyPrayerSchedules = json['createdMonthlyPrayerSchedules'] is List
        ? (json['createdMonthlyPrayerSchedules'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MonthlyPrayerSchedule.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdMosques = json['createdMosques'] is List
        ? (json['createdMosques'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Mosque.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdResources = json['createdResources'] is List
        ? (json['createdResources'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Resource.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdServices = json['createdServices'] is List
        ? (json['createdServices'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Service.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdVolunteerTasks = json['createdVolunteerTasks'] is List
        ? (json['createdVolunteerTasks'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => VolunteerTask.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _donations = json['donations'] is List
        ? (json['donations'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Donation.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _committees = json['committees'] is List
        ? (json['committees'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => CommitteeMembers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _gatherings = json['gatherings'] is List
        ? (json['gatherings'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => GatheringAttendees.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _instructingClasses = json['instructingClasses'] is List
        ? (json['instructingClasses'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Class.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _mosques = json['mosques'] is List
        ? (json['mosques'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MosqueFollowers.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _purchasedSubscriptions = json['purchasedSubscriptions'] is List
        ? (json['purchasedSubscriptions'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => MosqueSubscription.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _volunteerTasks = json['volunteerTasks'] is List
        ? (json['volunteerTasks'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => VolunteerTaskUser.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
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
    'id': id, 'selfie': _selfie, 'firstName': _firstName, 'lastName': _lastName, 'email': _email, 'phone': _phone, 'type': amplify_core.enumToString(_type), 'status': amplify_core.enumToString(_status), 'stripeCustomerId': _stripeCustomerId, 'createdAnnouncements': _createdAnnouncements?.map((Announcement? e) => e?.toJson()).toList(), 'createdClasses': _createdClasses?.map((Class? e) => e?.toJson()).toList(), 'createdCommittees': _createdCommittees?.map((Committee? e) => e?.toJson()).toList(), 'createdGatherings': _createdGatherings?.map((Gathering? e) => e?.toJson()).toList(), 'createdFundraisingCampaigns': _createdFundraisingCampaigns?.map((FundraisingCampaign? e) => e?.toJson()).toList(), 'createdMonthlyPrayerSchedules': _createdMonthlyPrayerSchedules?.map((MonthlyPrayerSchedule? e) => e?.toJson()).toList(), 'createdMosques': _createdMosques?.map((Mosque? e) => e?.toJson()).toList(), 'createdResources': _createdResources?.map((Resource? e) => e?.toJson()).toList(), 'createdServices': _createdServices?.map((Service? e) => e?.toJson()).toList(), 'createdVolunteerTasks': _createdVolunteerTasks?.map((VolunteerTask? e) => e?.toJson()).toList(), 'donations': _donations?.map((Donation? e) => e?.toJson()).toList(), 'committees': _committees?.map((CommitteeMembers? e) => e?.toJson()).toList(), 'gatherings': _gatherings?.map((GatheringAttendees? e) => e?.toJson()).toList(), 'instructingClasses': _instructingClasses?.map((Class? e) => e?.toJson()).toList(), 'mosques': _mosques?.map((MosqueFollowers? e) => e?.toJson()).toList(), 'purchasedSubscriptions': _purchasedSubscriptions?.map((MosqueSubscription? e) => e?.toJson()).toList(), 'volunteerTasks': _volunteerTasks?.map((VolunteerTaskUser? e) => e?.toJson()).toList(), 'bookmarks': _bookmarks?.map((Bookmark? e) => e?.toJson()).toList(), 'likes': _likes?.map((Like? e) => e?.toJson()).toList(), 'comments': _comments?.map((Comment? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'selfie': _selfie,
    'firstName': _firstName,
    'lastName': _lastName,
    'email': _email,
    'phone': _phone,
    'type': _type,
    'status': _status,
    'stripeCustomerId': _stripeCustomerId,
    'createdAnnouncements': _createdAnnouncements,
    'createdClasses': _createdClasses,
    'createdCommittees': _createdCommittees,
    'createdGatherings': _createdGatherings,
    'createdFundraisingCampaigns': _createdFundraisingCampaigns,
    'createdMonthlyPrayerSchedules': _createdMonthlyPrayerSchedules,
    'createdMosques': _createdMosques,
    'createdResources': _createdResources,
    'createdServices': _createdServices,
    'createdVolunteerTasks': _createdVolunteerTasks,
    'donations': _donations,
    'committees': _committees,
    'gatherings': _gatherings,
    'instructingClasses': _instructingClasses,
    'mosques': _mosques,
    'purchasedSubscriptions': _purchasedSubscriptions,
    'volunteerTasks': _volunteerTasks,
    'bookmarks': _bookmarks,
    'likes': _likes,
    'comments': _comments,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<UserModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UserModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final SELFIE = amplify_core.QueryField(fieldName: "selfie");
  static final FIRSTNAME = amplify_core.QueryField(fieldName: "firstName");
  static final LASTNAME = amplify_core.QueryField(fieldName: "lastName");
  static final EMAIL = amplify_core.QueryField(fieldName: "email");
  static final PHONE = amplify_core.QueryField(fieldName: "phone");
  static final TYPE = amplify_core.QueryField(fieldName: "type");
  static final STATUS = amplify_core.QueryField(fieldName: "status");
  static final STRIPECUSTOMERID = amplify_core.QueryField(fieldName: "stripeCustomerId");
  static final CREATEDANNOUNCEMENTS = amplify_core.QueryField(
    fieldName: "createdAnnouncements",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Announcement'));
  static final CREATEDCLASSES = amplify_core.QueryField(
    fieldName: "createdClasses",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Class'));
  static final CREATEDCOMMITTEES = amplify_core.QueryField(
    fieldName: "createdCommittees",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Committee'));
  static final CREATEDGATHERINGS = amplify_core.QueryField(
    fieldName: "createdGatherings",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Gathering'));
  static final CREATEDFUNDRAISINGCAMPAIGNS = amplify_core.QueryField(
    fieldName: "createdFundraisingCampaigns",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'FundraisingCampaign'));
  static final CREATEDMONTHLYPRAYERSCHEDULES = amplify_core.QueryField(
    fieldName: "createdMonthlyPrayerSchedules",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MonthlyPrayerSchedule'));
  static final CREATEDMOSQUES = amplify_core.QueryField(
    fieldName: "createdMosques",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mosque'));
  static final CREATEDRESOURCES = amplify_core.QueryField(
    fieldName: "createdResources",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Resource'));
  static final CREATEDSERVICES = amplify_core.QueryField(
    fieldName: "createdServices",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Service'));
  static final CREATEDVOLUNTEERTASKS = amplify_core.QueryField(
    fieldName: "createdVolunteerTasks",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VolunteerTask'));
  static final DONATIONS = amplify_core.QueryField(
    fieldName: "donations",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Donation'));
  static final COMMITTEES = amplify_core.QueryField(
    fieldName: "committees",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'CommitteeMembers'));
  static final GATHERINGS = amplify_core.QueryField(
    fieldName: "gatherings",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'GatheringAttendees'));
  static final INSTRUCTINGCLASSES = amplify_core.QueryField(
    fieldName: "instructingClasses",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Class'));
  static final MOSQUES = amplify_core.QueryField(
    fieldName: "mosques",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MosqueFollowers'));
  static final PURCHASEDSUBSCRIPTIONS = amplify_core.QueryField(
    fieldName: "purchasedSubscriptions",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'MosqueSubscription'));
  static final VOLUNTEERTASKS = amplify_core.QueryField(
    fieldName: "volunteerTasks",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'VolunteerTaskUser'));
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
    modelSchemaDefinition.name = "User";
    modelSchemaDefinition.pluralName = "Users";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.SELFIE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.FIRSTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.LASTNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.EMAIL,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.PHONE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.TYPE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.STATUS,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.enumeration)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.STRIPECUSTOMERID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDANNOUNCEMENTS,
      isRequired: false,
      ofModelName: 'Announcement',
      associatedKey: Announcement.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDCLASSES,
      isRequired: false,
      ofModelName: 'Class',
      associatedKey: Class.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDCOMMITTEES,
      isRequired: false,
      ofModelName: 'Committee',
      associatedKey: Committee.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDGATHERINGS,
      isRequired: false,
      ofModelName: 'Gathering',
      associatedKey: Gathering.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDFUNDRAISINGCAMPAIGNS,
      isRequired: false,
      ofModelName: 'FundraisingCampaign',
      associatedKey: FundraisingCampaign.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDMONTHLYPRAYERSCHEDULES,
      isRequired: false,
      ofModelName: 'MonthlyPrayerSchedule',
      associatedKey: MonthlyPrayerSchedule.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDMOSQUES,
      isRequired: false,
      ofModelName: 'Mosque',
      associatedKey: Mosque.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDRESOURCES,
      isRequired: false,
      ofModelName: 'Resource',
      associatedKey: Resource.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDSERVICES,
      isRequired: false,
      ofModelName: 'Service',
      associatedKey: Service.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.CREATEDVOLUNTEERTASKS,
      isRequired: false,
      ofModelName: 'VolunteerTask',
      associatedKey: VolunteerTask.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.DONATIONS,
      isRequired: false,
      ofModelName: 'Donation',
      associatedKey: Donation.DONOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.COMMITTEES,
      isRequired: false,
      ofModelName: 'CommitteeMembers',
      associatedKey: CommitteeMembers.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.GATHERINGS,
      isRequired: false,
      ofModelName: 'GatheringAttendees',
      associatedKey: GatheringAttendees.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.INSTRUCTINGCLASSES,
      isRequired: false,
      ofModelName: 'Class',
      associatedKey: Class.INSTRUCTOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.MOSQUES,
      isRequired: false,
      ofModelName: 'MosqueFollowers',
      associatedKey: MosqueFollowers.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.PURCHASEDSUBSCRIPTIONS,
      isRequired: false,
      ofModelName: 'MosqueSubscription',
      associatedKey: MosqueSubscription.PURCHASER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.VOLUNTEERTASKS,
      isRequired: false,
      ofModelName: 'VolunteerTaskUser',
      associatedKey: VolunteerTaskUser.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.BOOKMARKS,
      isRequired: false,
      ofModelName: 'Bookmark',
      associatedKey: Bookmark.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.LIKES,
      isRequired: false,
      ofModelName: 'Like',
      associatedKey: Like.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: User.COMMENTS,
      isRequired: false,
      ofModelName: 'Comment',
      associatedKey: Comment.CREATOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.CREATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: User.UPDATEDAT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _UserModelType extends amplify_core.ModelType<User> {
  const _UserModelType();
  
  @override
  User fromJson(Map<String, dynamic> jsonData) {
    return User.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'User';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [User] in your schema.
 */
class UserModelIdentifier implements amplify_core.ModelIdentifier<User> {
  final String id;

  /** Create an instance of UserModelIdentifier using [id] the primary key. */
  const UserModelIdentifier({
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
  String toString() => 'UserModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UserModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}