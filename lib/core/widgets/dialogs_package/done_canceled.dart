// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:lottie/lottie.dart';
// import 'package:tawasil/layouts/activity/main/main_screen.dart';
// import 'package:tawasil/res/drawable/lottie/lottie.dart';
//
// import '../../res/drawable/icons/icons.dart';
// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../comman/buttons/master_button/master_button.dart';
// import '../comman/rating_bar/rating_bar.dart';
// import '../comman/space/space.dart';
//
// class DoneCanceledTripAlert extends StatelessWidget {
//   const DoneCanceledTripAlert({Key? key}) : super(key: key);
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
//                   return const DoneCanceledTripDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }
// class DoneCanceledTripDialog extends StatelessWidget {
//   const DoneCanceledTripDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//
//           Text(tr("done_canceled"),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//
//           const Space(boxHeight: 40),
//           MasterButton(buttonText: tr("ok"),
//             onPressed: (){
//             Get.to(const MainScreen());
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
