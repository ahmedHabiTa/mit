// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/widgets/master_button.dart';
// import '../../../../../core/widgets/space.dart';
// import '../../../../core/constant/colors/colors.dart';
// import '../../../../core/constant/styles/styles.dart';
// import '../../../injection_container.dart';
// import '../../util/navigator.dart';

// class CancelTripAlert extends StatelessWidget {
//   const CancelTripAlert({Key? key}) : super(key: key);

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
//                   return const CancelTripDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }

// class CancelTripDialog extends StatelessWidget {
//   const CancelTripDialog({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//           Text(
//             tr('cancel_or_search'),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//           const Space(boxHeight: 40),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Expanded(
//                 child: GestureDetector(
//                   onTap: () {
//                     sl<AppNavigator>().pop();
//                     // showDialog(
//                     //     context: context,
//                     //     builder: (BuildContext context) {
//                     //       return const TripDetailsDialog();
//                     //     });
//                   },
//                   child: Container(
//                     // padding: EdgeInsets.all(10),
//                     // width: 122.w,
//                     height: 55.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(20.r),
//                     ),
//                     child: Center(
//                       child: Text(
//                         tr('search'),
//                         style:
//                             TextStyles.textViewMedium15.copyWith(color: white),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const Space(
//                 boxWidth: 10,
//               ),
//               Expanded(
//                 child: MasterButton(
//                   tag: 'cancel',
//                   buttonText: tr('cancel'),
//                   borderColor: mainColor,
//                   // buttonStyle: TextStyles.agreeStyle,
//                   // buttonWidth: 52.w,
//                   buttonHeight: 59.h,
//                   buttonRadius: 20.r,
//                   buttonColor: mainColor,
//                   onPressed: () {
//                     // Get.to(const ReasonCancelScreen() );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
