// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../injection_container.dart';
// import '../constant/colors/colors.dart';
// import '../util/navigator.dart';

// class MasterBackButton extends StatelessWidget {
//   final VoidCallback? onPressed;
//   final Color? color;
//   final Color? iconColor;
//   final double? iconSize;
//   final IconData? icon;
//   const MasterBackButton(
//       {Key? key,
//       this.onPressed,
//       this.color,
//       this.iconColor,
//       this.iconSize,
//       this.icon})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: onPressed ?? () => sl<AppNavigator>().pop(),
//       icon: Container(
//           height: 30.h,
//           width: 30.w,
//           decoration: const BoxDecoration(
//               // color:color?? white,
//               // borderRadius: BorderRadius.circular(4.r),
//               ),
//           child: Center(
//               child: Icon(
//             icon ?? CupertinoIcons.back,
//             color: iconColor ?? mainColor,
//             size: iconSize ?? 20.h,
//           ))),
//     );
//   }
// }
