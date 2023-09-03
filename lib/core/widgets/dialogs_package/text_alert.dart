// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/widgets/space.dart';
// import '../../../../core/constant/colors/colors.dart';
// import '../../../../core/constant/styles/styles.dart';
// import '../../../injection_container.dart';
// import '../../util/navigator.dart';
// import '../master_button.dart';

// class SendMessageAlert extends StatelessWidget {
//   final String? type;
//   const SendMessageAlert({
//     Key? key,
//     this.type,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Simple Alert Dialog'),
//           onPressed: () {
//             //   showDialog(
//             //       context: context,
//             //       builder: (BuildContext context) {
//             //          return const SendMessageDialog();
//             //       });
//           },
//         ),
//       ),
//     );
//   }
// }

// // ignore: must_be_immutable
// class TextAlertDialog extends StatelessWidget {
//   final String text;
//   String? type;

//   TextAlertDialog({
//     Key? key,
//     required this.text,
//     this.type,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium20.copyWith(color: textColor),
//           ),
//           const Space(boxHeight: 40),
//           MasterButton(
//             tag: 'ok',
//             buttonText: tr('ok'),
//             onPressed: () {
//               sl<AppNavigator>().pop();
//             },
//             borderColor: mainColor,
//             buttonColor: mainColor,
//             buttonHeight: 53.h,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TextAlertDialogWithButton extends StatelessWidget {
//   final String text;
//   final String? type;

//   const TextAlertDialogWithButton({
//     Key? key,
//     required this.text,
//     this.type,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: white,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
//       title: Column(
//         children: <Widget>[
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyles.textViewMedium20.copyWith(color: textColor),
//           ),
//           const Space(boxHeight: 40),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 30),
//             child: MasterButton(
//               tag: 'ok',
//               buttonText: tr('cart'),
//               onPressed: () {},
//               borderColor: mainColor,
//               buttonColor: mainColor,
//               buttonHeight: 53.h,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
