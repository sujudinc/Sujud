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

import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'Announcement.dart';
import 'Bookmark.dart';
import 'Class.dart';
import 'Comment.dart';
import 'Committee.dart';
import 'CommitteeMembers.dart';
import 'Donation.dart';
import 'FundraisingCampaign.dart';
import 'Gathering.dart';
import 'GatheringAttendees.dart';
import 'Like.dart';
import 'MonthlyPrayerSchedule.dart';
import 'Mosque.dart';
import 'MosqueFollowers.dart';
import 'MosqueSubscription.dart';
import 'Resource.dart';
import 'Service.dart';
import 'User.dart';
import 'VolunteerTask.dart';
import 'VolunteerTaskUser.dart';
import 'AbortMultipartUploadOutput.dart';
import 'Address.dart';
import 'CompleteMultipartUploadOutput.dart';
import 'ContactInfo.dart';
import 'Day.dart';
import 'GenerateMultipartUploadUrlOutput.dart';
import 'GenerateMultipartUploadUrlsOutput.dart';
import 'Hours.dart';
import 'InProgressUpload.dart';
import 'InitiateMultipartUploadOutput.dart';
import 'ListCompletedMultipartUploadsOutput.dart';
import 'ListInProgressMultipartUploadsOutput.dart';
import 'OperatingHours.dart';
import 'PrayerTime.dart';
import 'SocialMedia.dart';
import 'UploadedPart.dart';

export 'AbortMultipartUploadOutput.dart';
export 'Address.dart';
export 'Announcement.dart';
export 'Bookmark.dart';
export 'Class.dart';
export 'Comment.dart';
export 'Committee.dart';
export 'CommitteeMembers.dart';
export 'CompleteMultipartUploadOutput.dart';
export 'ContactInfo.dart';
export 'Day.dart';
export 'DayType.dart';
export 'Donation.dart';
export 'FundraisingCampaign.dart';
export 'FundraisingCampaignType.dart';
export 'Gathering.dart';
export 'GatheringAttendees.dart';
export 'GatheringType.dart';
export 'GenerateMultipartUploadUrlOutput.dart';
export 'GenerateMultipartUploadUrlsOutput.dart';
export 'Hours.dart';
export 'InProgressUpload.dart';
export 'InitiateMultipartUploadOutput.dart';
export 'Like.dart';
export 'ListCompletedMultipartUploadsOutput.dart';
export 'ListInProgressMultipartUploadsOutput.dart';
export 'MonthlyPrayerSchedule.dart';
export 'Mosque.dart';
export 'MosqueFollowers.dart';
export 'MosqueSubscription.dart';
export 'MosqueSubscriptionStatus.dart';
export 'OperatingHours.dart';
export 'PrayerTime.dart';
export 'PrayerType.dart';
export 'Resource.dart';
export 'ResourceType.dart';
export 'Service.dart';
export 'ServiceType.dart';
export 'SocialMedia.dart';
export 'UploadType.dart';
export 'UploadedPart.dart';
export 'User.dart';
export 'UserStatus.dart';
export 'UserType.dart';
export 'VolunteerTask.dart';
export 'VolunteerTaskUser.dart';

class ModelProvider implements amplify_core.ModelProviderInterface {
  @override
  String version = "3bf634b0ea182cf7f09d8fc0e746976d";
  @override
  List<amplify_core.ModelSchema> modelSchemas = [Announcement.schema, Bookmark.schema, Class.schema, Comment.schema, Committee.schema, CommitteeMembers.schema, Donation.schema, FundraisingCampaign.schema, Gathering.schema, GatheringAttendees.schema, Like.schema, MonthlyPrayerSchedule.schema, Mosque.schema, MosqueFollowers.schema, MosqueSubscription.schema, Resource.schema, Service.schema, User.schema, VolunteerTask.schema, VolunteerTaskUser.schema];
  @override
  List<amplify_core.ModelSchema> customTypeSchemas = [AbortMultipartUploadOutput.schema, Address.schema, CompleteMultipartUploadOutput.schema, ContactInfo.schema, Day.schema, GenerateMultipartUploadUrlOutput.schema, GenerateMultipartUploadUrlsOutput.schema, Hours.schema, InProgressUpload.schema, InitiateMultipartUploadOutput.schema, ListCompletedMultipartUploadsOutput.schema, ListInProgressMultipartUploadsOutput.schema, OperatingHours.schema, PrayerTime.schema, SocialMedia.schema, UploadedPart.schema];
  static final ModelProvider _instance = ModelProvider();

  static ModelProvider get instance => _instance;
  
  amplify_core.ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Announcement":
        return Announcement.classType;
      case "Bookmark":
        return Bookmark.classType;
      case "Class":
        return Class.classType;
      case "Comment":
        return Comment.classType;
      case "Committee":
        return Committee.classType;
      case "CommitteeMembers":
        return CommitteeMembers.classType;
      case "Donation":
        return Donation.classType;
      case "FundraisingCampaign":
        return FundraisingCampaign.classType;
      case "Gathering":
        return Gathering.classType;
      case "GatheringAttendees":
        return GatheringAttendees.classType;
      case "Like":
        return Like.classType;
      case "MonthlyPrayerSchedule":
        return MonthlyPrayerSchedule.classType;
      case "Mosque":
        return Mosque.classType;
      case "MosqueFollowers":
        return MosqueFollowers.classType;
      case "MosqueSubscription":
        return MosqueSubscription.classType;
      case "Resource":
        return Resource.classType;
      case "Service":
        return Service.classType;
      case "User":
        return User.classType;
      case "VolunteerTask":
        return VolunteerTask.classType;
      case "VolunteerTaskUser":
        return VolunteerTaskUser.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}


class ModelFieldValue<T> {
  const ModelFieldValue.value(this.value);

  final T value;
}
