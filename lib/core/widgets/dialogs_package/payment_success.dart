// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';
// import 'package:tawasil/res/drawable/lottie/lottie.dart';
//
// import '../../res/drawable/icons/icons.dart';
// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../comman/buttons/master_button/master_button.dart';
// import '../comman/rating_bar/rating_bar.dart';
// import '../comman/space/space.dart';
// import 'driver_rating.dart';
//
// class PaymentSuccessAlert extends StatelessWidget {
//   const PaymentSuccessAlert({Key? key}) : super(key: key);
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
//                   return const PaymentSuccessDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }
// class PaymentSuccessDialog extends StatelessWidget {
//   const PaymentSuccessDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//
//         children: <Widget>[
//           Lottie.asset(
//             successLottie,
//             width: 215.w
//           ),
//           Text(tr("payment_success"),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//
//           const Space(boxHeight: 40),
//           MasterButton(buttonText: tr("driver_rating"),
//             onPressed: (){
//               showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//
//                     return const DriverRatingDialog();
//                   });
//             },
//             borderColor: lightOrangeColor,
//             buttonColor: lightOrangeColor,
//             buttonHeight: 53.h,
//             buttonRadius: 50.r,
//           ),
//
//         ],
//       ),
//
//     );
//   }
// }
