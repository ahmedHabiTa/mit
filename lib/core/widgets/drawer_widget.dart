// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../core/widgets/space.dart';
// import '../../../core/constant/colors/colors.dart';
// import '../../../core/constant/styles/styles.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         children: <Widget>[
//           const Space(boxHeight: 50),
//           CircleAvatar(
//             radius: 73.r,
//             backgroundColor: textColor,
//             child: CircleAvatar(
//               radius: 70.r,
//               backgroundImage: const NetworkImage(
//                 "https://media.istockphoto.com/photos/cropped-shot-of-an-africanamerican-young-woman-using-smart-phone-at-picture-id1313901506?s=2048x2048",
//               ),
//             ),
//           ),
//           const Space(boxHeight: 10),
//           Text(
//             "ندى أحمد محمد",
//             style: TextStyles.textViewMedium25.copyWith(color: mainColor),
//           ),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: const EdgeInsets.all(15),
//               color: textColor.withOpacity(0.2),
//               height: 70.h,
//               child: Row(
//                 children: <Widget>[
//                   // Image.asset(packageIcon),
//                   const Space(boxWidth: 10),
//                   Text(
//                     tr("my_packages"),
//                     style:
//                         TextStyles.textViewMedium22.copyWith(color: textColor),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Space(boxHeight: 10),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: const EdgeInsets.all(15),
//               color: textColor.withOpacity(0.2),
//               height: 70.h,
//               child: Row(
//                 children: <Widget>[
//                   // Image.asset(userLightIcon),
//                   const Space(boxWidth: 10),
//                   Text(
//                     tr("my_profile"),
//                     style:
//                         TextStyles.textViewMedium22.copyWith(color: textColor),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Space(boxHeight: 10),
//           InkWell(
//             onTap: () {},
//             child: Container(
//               padding: const EdgeInsets.all(15),
//               color: textColor.withOpacity(0.2),
//               height: 70.h,
//               child: Row(
//                 children: <Widget>[
//                   // Image.asset(personCard),
//                   const Space(boxWidth: 10),
//                   Text(
//                     tr("address"),
//                     style:
//                         TextStyles.textViewMedium22.copyWith(color: textColor),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const Space(boxHeight: 10),
//         ],
//       ),
//     );
//   }
// }
