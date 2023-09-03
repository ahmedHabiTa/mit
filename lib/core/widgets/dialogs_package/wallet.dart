// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';
// import 'package:tawasil/res/drawable/lottie/lottie.dart';
//
// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../comman/space/space.dart';
//
//
// class WalletAlert extends StatelessWidget {
//   const WalletAlert({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Simple Alert Dialog'),
//           onPressed: () {
//             showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return const WalletDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class WalletDialog extends StatelessWidget {
//   const WalletDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       title: Column(
//         children: <Widget>[
//           Lottie.asset(
//               loginLottie,
//               width: 135.w
//           ),
//
//           Text(tr("wallet"),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//           const Space(boxHeight: 20),
//           Container(
//             // padding: EdgeInsets.all(10),
//             // width: 122.w,
//             height: 52.h,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20.r),
//                 gradient: const LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     mainColor,
//                     headerColor,
//                   ],
//                 )
//             ),
//             child: Center(
//               child: Text(tr("ok"),
//                 style: TextStyles.textViewMedium15.copyWith(color: white),
//               ),
//             ),
//           ),
//         ],
//       ),
//
//
//
//
//
//     );
//     // titleTextStyle: TextStyles..copyWith(color: inProgressColor),
//
//
//   }
// }
