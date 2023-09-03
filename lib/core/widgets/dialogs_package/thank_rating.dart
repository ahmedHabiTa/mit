// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lottie/lottie.dart';

// import '../../constant/colors/colors.dart';
// import '../../constant/lottie.dart';
// import '../../constant/styles/styles.dart';
// import '../../util/navigator.dart';
// import '../master_button.dart';
// import '../space.dart';

// class ThankRatingDialog extends StatelessWidget {
//   const ThankRatingDialog({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//           Lottie.asset(changePasswordLottie, width: 215.w),
//           Text(
//             tr("thank_rating"),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//           const Space(boxHeight: 40),
//           MasterButton(
//             buttonText: tr("ok"),
//             tag: "ok+2",
//             onPressed: () {
//               AppNavigator.pop(context: context);
//             },
//             borderColor: mainColor,
//             buttonColor: mainColor,
//             buttonHeight: 53.h,
//             buttonRadius: 50.r,
//           ),
//         ],
//       ),
//     );
//   }
// }
