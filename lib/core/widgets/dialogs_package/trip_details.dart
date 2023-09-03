// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../layouts/activity/trips/cancel_trip/cancel_trip_screen.dart';
// import '../../res/drawable/icons/icons.dart';
// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../bottom_sheet/cancel_trip.dart';
// import '../comman/buttons/master_button/master_button.dart';
// import '../comman/rating_bar/rating_bar.dart';
// import '../comman/space/space.dart';
//
// class TripDetailsAlert extends StatelessWidget {
//   const TripDetailsAlert({Key? key}) : super(key: key);
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
//                   return const TripDetailsDialog();
//                 });
//           },
//         ),
//       ),
//     );
//   }
// }
// class TripDetailsDialog extends StatelessWidget {
//   final VoidCallback ? tap;
//   const TripDetailsDialog({Key? key,this.tap}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//
//
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               ClipRRect(
//
//                 borderRadius: BorderRadius.all(Radius.circular(40.r)),
//                 child: CachedNetworkImage(
//                   imageUrl:
//                   "https://media.istockphoto.com/photos/cropped-shot-of-an-africanamerican-young-woman-using-smart-phone-at-picture-id1313901506?s=2048x2048",
//                   fit: BoxFit.fill,
//                   height: 75.h,
//                   width: 81.w,
//                 ),
//               ),
//               const Space(boxWidth: 24),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text("سحر أحمد محمد",
//                     style: TextStyles.textViewRegular20.copyWith(color: headerColor),
//                   ),
//                   const Space(boxHeight: 5,),
//                   Row(
//                     children: <Widget>[
//                       ratingBar(),
//                       const Space(boxWidth: 5),
//                       Text("(4.5)",
//                         style: TextStyles.textViewRegular10.copyWith(color: headerColor),
//                       ),
//                     ],
//                   ),
//
//
//                 ],
//               ),
//             ],
//           ),
//           const Space(boxHeight: 10),
//          const  Divider(thickness: 2,
//            color:whiteOpacityColor,
//          ),
//           const Space(boxHeight: 10),
//           Row(
//             children: <Widget>[
//               Image.asset(car),
//               const Space(boxWidth: 5),
//               Text("تويوتا كرولا - رصاصي",
//
//                 softWrap: true,
//                 overflow: TextOverflow.clip,
//                 style: TextStyles.textViewRegular15.copyWith(color: headerColor),
//               ),
//               const Spacer(),
//               Text("أ ع ت - 258",
//                 style: TextStyles.textViewBold15.copyWith(color: headerColor),
//               ),
//             ],
//           ),
//           const Space(boxHeight: 20),
//           Text(tr("expected_price"),
//             style: TextStyles.textViewRegular12.copyWith(color: whiteOpacityColor),
//           ),
//           const Space(boxHeight: 10),
//
//
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Expanded(
//                 child:InkWell(
//                   onTap:tap ?? (){
//                     Get.back();
//                     showModalBottomSheet(
//                         shape: const RoundedRectangleBorder(
//                             borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(20),
//                                 topRight: Radius.circular(20))),
//                         elevation: 20,
//                         context: context,
//                         builder: (context) {
//                           return const CancelTripBottomSheet();
//                         });
//                   },
//                   child: Container(
//                     // padding: EdgeInsets.all(10),
//                     // width: 122.w,
//                     height: 52.h,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20.r),
//                         gradient: const LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: [
//                             mainColor,
//                             headerColor,
//                           ],
//                         )
//                     ),
//                     child: Center(
//                       child: Text(tr("accept"),
//                         style: TextStyles.textViewMedium15.copyWith(color: white),
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
//                   buttonText: tr("refused"),
//                    borderColor: lightOrangeColor,
//                   // buttonStyle: TextStyles.agreeStyle,
//                  // buttonWidth: 52.w,
//                   buttonHeight: 59.h,
//                   buttonRadius: 20.r,
//                   buttonColor: lightOrangeColor,
//                   onPressed: () {},
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//
//     );
//   }
// }
