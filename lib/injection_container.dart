// import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import '../core/util/api_basehelper.dart';
import '../core/util/navigator.dart';
import 'core/util/api_basehelper.dart';

final GetIt sl = GetIt.instance;
final ApiBaseHelper helper = ApiBaseHelper();
Future<void> init() async {
  // await initAuthInjection(sl);
  // await initHomeInjection(sl);
  // await initActionsAdsInjection(sl);
  // await initAdvertisementInjection(sl);
  // await initNotificationInjection(sl);
  // await initMoreInjection(sl);

  // core
  sl.registerLazySingleton<AppNavigator>(() => AppNavigator());
  // sl.registerLazySingleton<AuthRemoteDataSource>(
  //     () => AuthRemoteDataSourceImp(helper: sl()));
  //sl.registerLazySingleton<AppLocation>(() => AppLocationImpl());
  // FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  // sl.registerLazySingleton<FirebaseMessaging>(() => firebaseMessaging);
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  helper.dioInit();
  sl.registerLazySingleton(() => helper);
}
