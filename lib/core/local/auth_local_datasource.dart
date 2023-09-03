// import 'dart:convert';
// import 'dart:developer';

// import 'package:shared_preferences/shared_preferences.dart';

// import '../../features/auth/domain/entities/login_entity.dart';
// import '../../features/auth/domain/usecases/login_usecase.dart';
// import '../error/exceptions.dart';

// const String userCacheConst = 'user_cache';
// const String cacheTokenConst = 'cache_token';
// const String loginInfoConst = 'login_info';
// const String registerBodyConst = 'register_body_const';

// abstract class AuthLocalDataSource {
//   Future<void> cacheUserData({required UserResponse user});
//   Future<UserResponse> getCachedUserData();

//   Future<void> clearCachedUser();

//   Future<void> cacheUserAccessToken({required String token});
//   String getCacheUserAccessToken();
//   Future<String> checkAccessForGuest();
//   Future<void> cacheUserLoginInfo({required LoginParams params});
//   Future<LoginParams> getCacheUserLoginInfo();

//   Future<void> clearData();
// }

// class AuthLocalDataSourceImpl extends AuthLocalDataSource {
//   final SharedPreferences sharedPreference;
//   AuthLocalDataSourceImpl({required this.sharedPreference});
//   @override
//   Future<void> cacheUserData({required UserResponse user}) async {
//     try {
//       await sharedPreference.setString(
//           userCacheConst, jsonEncode(user.toJson()));
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   Future<UserResponse> getCachedUserData() async {
//     try {
//       final String? userShared = sharedPreference.getString(userCacheConst);
//       if (userShared != null) {
//         return userResponseFromJson(userShared);
//       } else {
//         throw CacheException();
//       }
//     } on CacheException {
//       throw CacheException();
//     }
//   }

//   @override
//   Future<void> clearCachedUser() async {
//     try {
//       await sharedPreference.clear();
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   Future<void> cacheUserAccessToken({required String token}) async {
//     try {
//       await sharedPreference.setString(cacheTokenConst, token);
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   String getCacheUserAccessToken() {
//     try {
//       final String? token = sharedPreference.getString(cacheTokenConst);
//       if (token != null) {
//         return token;
//       } else {
//         throw CacheException();
//       }
//     } on CacheException {
//       throw CacheException();
//     }
//   }

//   @override
//   Future<String> checkAccessForGuest() async {
//     try {
//       final String? token = sharedPreference.getString(cacheTokenConst);
//       if (token != null) {
//         return token;
//       } else {
//         return '';
//       }
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   Future<void> cacheUserLoginInfo({required LoginParams params}) async {
//     try {
//       await sharedPreference.setString(
//           loginInfoConst, json.encode(params.toMap()));
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   Future<LoginParams> getCacheUserLoginInfo() async {
//     try {
//       final String? loginInfo = sharedPreference.getString(loginInfoConst);
//       if (loginInfo != null) {
//         return LoginParams.fromMap(json.decode(loginInfo));
//       } else {
//         throw CacheException();
//       }
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }

//   @override
//   Future<void> clearData() async {
//     try {
//       await sharedPreference.clear();
//     } catch (e) {
//       log(e.toString());
//       throw CacheException();
//     }
//   }
// }
