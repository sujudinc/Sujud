// 📦 Package imports:
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
// 🌎 Project imports:
import 'package:sujud/abstracts/abstracts.dart';
import 'package:sujud/apis/apis.dart';
import 'package:sujud/configs/amplify.config.dart';
import 'package:sujud/models/models.dart';
import 'package:sujud/repos/repos.dart';
import 'package:sujud/services/services.dart';
import 'package:sujud/utilities/utilities.dart';
import 'package:url_strategy/url_strategy.dart';

final _dependencies = GetIt.instance;

Future<void> initDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();

  await Hive.initFlutter();

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  await _initAmplify();

  _initUtilities();
  _initServices();
  _initApis();
  _initRepos();
  _initAppDependencies();

  await _dependencies.get<SharedPrefsUtilityAbstract>().initSharedPrefs();
}

Future<void> _initAmplify() async {
  await Amplify.addPlugins([
    AmplifyAuthCognito(),
    AmplifyAPI(modelProvider: ModelProvider.instance),
    if (!kIsWeb) AmplifyDataStore(modelProvider: ModelProvider.instance),
    AmplifyStorageS3(),
  ]);

  try {
    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException {
    safePrint('📀 Amplify already configured');
  }
}

void _initAppDependencies() => _dependencies
  ..registerSingleton<NavigationUtilityAbstract>(NavigationUtility());

void _initApis() => _dependencies
  ..registerFactory<ModelApiAbstract<Announcement>>(
    AnnouncementApi.new,
  )
  ..registerFactory<ModelApiAbstract<Mosque>>(
    MosqueApi.new,
  )
  ..registerFactory<ModelApiAbstract<User>>(
    UserApi.new,
  );

void _initRepos() => _dependencies
  ..registerSingleton<AnnouncementRepoAbstract>(AnnouncementRepo())
  ..registerSingleton<MosqueRepoAbstract>(MosqueRepo())
  ..registerSingleton<UserRepoAbstract>(UserRepo());

void _initServices() => _dependencies
  ..registerFactory<AmplifyAnalyticsServiceAbstract>(
    AmplifyAnalyticsService.new,
  )
  ..registerFactory<AmplifyApiServiceAbstract<Announcement>>(
    AmplifyApiService<Announcement>.new,
  )
  ..registerFactory<AmplifyApiServiceAbstract<Mosque>>(
    AmplifyApiService<Mosque>.new,
  )
  ..registerFactory<AmplifyApiServiceAbstract<User>>(
    AmplifyApiService<User>.new,
  )
  ..registerFactory<AmplifyAuthServiceAbstract>(
    AmplifyAuthService.new,
  )
  ..registerFactory<AmplifyDatastoreServiceAbstract<Mosque>>(
    AmplifyDatastoreService<Mosque>.new,
  )
  ..registerFactory<AmplifyDatastoreServiceAbstract<User>>(
    AmplifyDatastoreService<User>.new,
  )
  ..registerFactory<AmplifyStorageServiceAbstract>(
    AmplifyStorageService.new,
  )
  ..registerFactory<GraphqlServiceAbstract>(
    GraphQLService.new,
  )
  ..registerFactory<RestServiceAbstract>(
    RestService.new,
  )
  ..registerFactory<ReviewServiceAbstract>(
    ReviewService.new,
  );

void _initUtilities() => _dependencies
  ..registerFactoryParam<FormUtilityAbstract, GlobalKey<FormBuilderState>,
      void>(
    (formKey, _) => FormUtility(formKey: formKey),
  )
  ..registerFactoryParam<LocalDatabaseUtilityAbstract, String, void>(
    (collectionName, _) => LocalDatabaseUtility(
      collectionName: collectionName,
    ),
  )
  ..registerFactory<LoggerUtilityAbstract>(LoggerUtility.new)
  ..registerFactory<MediaUtilityAbstract>(MediaUtility.new)
  ..registerFactory<NetworkUtilityAbstract>(NetworkUtility.new)
  ..registerFactoryParam<PrayerUtilityAbstract, Mosque, void>(
    (mosque, _) => PrayerUtility(
      monthlyPrayerSchedules: mosque.monthlyPrayerSchedules!,
    ),
  )
  ..registerFactory<SecureStorageUtilityAbstract>(SecureStorageUtility.new)
  ..registerFactory<SharedPrefsUtilityAbstract>(SharedPrefsUtility.new)
  ..registerFactory<ToastUtilityAbstract>(ToastUtility.new);
