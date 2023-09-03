// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../res/drawable/icons/icons.dart';
// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../comman/buttons/master_button/master_button.dart';
// import '../comman/rating_bar/rating_bar.dart';
// import '../comman/space/space.dart';
//
// class TripCostAlert extends StatelessWidget {
//   const TripCostAlert({Key? key}) : super(key: key);
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
//                   return const TripCostDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }
// class TripCostDialog extends StatelessWidget {
//   const TripCostDialog({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//
//         children: <Widget>[
//           Text(tr("trip_cost"),
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text("26",
//                 textAlign: TextAlign.center,
//                 style: TextStyles.textViewMedium25.copyWith(color: orange),
//               ),
//               const Space(boxWidth: 8),
//               Text(tr("sr"),
//                 textAlign: TextAlign.center,
//                 style: TextStyles.textViewMedium25.copyWith(color: orange),
//               ),
//             ],
//           ),
//           const Space(boxHeight: 40),
//           MasterButton(buttonText: tr("pay_end_trip"),
//             onPressed: (){},
//             borderColor: lightOrangeColor,
//             buttonColor: lightOrangeColor,
//
//             buttonRadius: 50.r,
//           ),
//
//         ],
//       ),
//
//     );
//   }
// }
