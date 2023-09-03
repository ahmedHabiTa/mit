// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:easy_localization/easy_localization.dart';

// import '../error/exceptions.dart';
// import '../util/api_basehelper.dart';

// abstract class FCMRemoteDataSource {
//   Future<void> sendFCM({
//     required Map<String, dynamic> data,
//     required String toFCM,
//     Map<String, dynamic>? notification,
//   });
// }

// class FCMRemoteDataSourceImpl implements FCMRemoteDataSource {
//   final ApiBaseHelper helper;
//   FCMRemoteDataSourceImpl({required this.helper});
//   @override
//   Future<void> sendFCM({
//     required Map<String, dynamic> data,
//     required String toFCM,
//     Map<String, dynamic>? notification,
//   }) async {
//     try {
//       await Dio().post('https://fcm.googleapis.com/fcm/send',
//           options: Options(
//             headers: <String, String>{
//               'Content-Type': 'application/json; charset=UTF-8',
//               'Authorization':
//                   'key=AAAAzF6CbZw:APA91bHjmd0miW6lcnBwStrVKwbQX3buQUHu3MzMtvV65jk7opt2d3_zCCBMr2AWM8tiXT7lGV0kN2sJsGd8AsczhuHr_OKMjqewBJSsvL6pY8ghDATa-mOFiRW9LtOSN1sr8L_FmwgH'
//             },
//           ),
//           data: jsonEncode(<String, dynamic>{
//             'to': toFCM,
//             'data': data,
//             'notification': notification,
//           }));
//     } catch (e) {
//       log(e.toString());
//       throw ServerException(message: tr(''));
//     }
//   }
// }
