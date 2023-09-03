// import 'package:easy_localization/easy_localization.dart' as e;
// import 'package:flutter/material.dart';

// import '../../../../core/constant/styles/styles.dart';
// import '../constant/colors/colors.dart';
// import '../constant/icons.dart';
// import '../util/validator.dart';

// class PhoneFormFeild extends StatefulWidget {
//   final TextEditingController controller;
//   final bool obSecure;
//   final bool isClickable;
//   final TextInputType keyboardType;
//   final TextDirection? textDirection;
//   final String? Function(String?)? validation;
//   final String hintText;
//   final Function()? onTap;
//   final Function()? clicked;
//   final IconData? suffixIcon;
//   final String? prefixIcon;
//   final Function(String)? onChanged;
//   final Widget? widget;
//   final Function? validateFunction;
//   final String? Function(String?) validate;
//   const PhoneFormFeild({
//     Key? key,
//     required this.controller,
//     this.isClickable = true,
//     this.obSecure = false,
//     this.keyboardType = TextInputType.text,
//     this.validation,
//     this.textDirection = TextDirection.ltr,
//     required this.hintText,
//     this.onTap,
//     this.clicked,
//     this.suffixIcon,
//     this.widget,
//     this.validateFunction,
//     this.prefixIcon,
//     this.validate = Validator.defaultEmptyValidator,
//     this.onChanged,
//   }) : super(key: key);

//   @override
//   State<PhoneFormFeild> createState() => _PhoneFormFeildState();
// }

// class _PhoneFormFeildState extends State<PhoneFormFeild> {
//   bool secure = false;
//   TextDirection? textDirection;
//   String? fontFamily;
//   @override
//   void initState() {
//     super.initState();
//     textDirection = widget.textDirection;
//     if (widget.keyboardType == TextInputType.number) {
//       fontFamily = "Almarai";
//     }
//   }

//   void _checkForArabicLetter(String text) {
//     final arabicRegex = RegExp(r'[ء-ي-_ \.]*$');
//     final englishRegex = RegExp(r'[a-zA-Z ]');
//     final spi = RegExp("[\$&+,:;=?@#|'<>.^*()%!-]+");
//     final numbers = RegExp("^[0-9]*\$");
//     setState(() {
//       text.contains(arabicRegex) &&
//               !text.startsWith(englishRegex) &&
//               !text.startsWith(spi) &&
//               !text.startsWith(numbers)
//           ? textDirection = TextDirection.rtl
//           : textDirection = TextDirection.ltr;
//     });
//   }

//   @override
//   void didUpdateWidget(covariant PhoneFormFeild oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection:
//           e.EasyLocalization.of(context)!.currentLocale!.languageCode == "en"
//               ? TextDirection.ltr
//               : TextDirection.rtl,
//       child: TextFormField(
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         maxLines: 1,
//         textDirection: widget.textDirection,
//         validator: (value) => Validator.phone(value,pho),
//         enabled: widget.isClickable,

//         onChanged: (value) {
//           _checkForArabicLetter(value);
//           if (widget.onChanged != null) widget.onChanged!(value);
//         },
//         // onChanged: widget.onChanged,
//         style: TextStyles.textViewMedium20
//             .copyWith(color: textColor, fontFamily: "Almarai"),
//         decoration: InputDecoration(
//           filled: false,
//           labelStyle: TextStyles.textViewRegular20.copyWith(color: mainColor),
//           fillColor: mainColor.withOpacity(.06),
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
//           prefixIcon: e.EasyLocalization.of(context)!
//                       .currentLocale!
//                       .languageCode ==
//                   "en"
//               ? Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//                   child: Text("+966",
//                       style: TextStyles.textViewRegular20.copyWith(
//                         color: mainColor,
//                       ),
//                       textDirection: TextDirection.ltr),
//                 )
//               : Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//                   child: Image.asset(phoneIcon, height: 20, color: mainColor)),
//           // prefixIcon:Padding(
//           //   padding: const EdgeInsets.all(15),
//           //   child: Image.asset(widget.prefixIcon!, fit: BoxFit.contain ,height: 10, ),
//           // ),
//           hintText: widget.hintText,
//           hintStyle: TextStyles.textViewRegular20.copyWith(color: Colors.grey),
//           suffixIcon: e.EasyLocalization.of(context)!
//                       .currentLocale!
//                       .languageCode !=
//                   "en"
//               ? Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
//                   child: Text("+966",
//                       style: TextStyles.textViewRegular20.copyWith(
//                         color: mainColor,
//                       ),
//                       textDirection: TextDirection.ltr),
//                 )
//               : Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
//                   child: Image.asset(phoneIcon, height: 20, color: mainColor)),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: const BorderSide(
//               color: mainColor,
//               width: 1,
//             ),
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: const BorderSide(
//               color: mainColor,
//               width: 1,
//             ),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10.0),
//             borderSide: const BorderSide(
//               color: mainColor,
//               width: 1,
//             ),
//           ),
//           border: OutlineInputBorder(
//             borderSide: const BorderSide(
//               color: mainColor,
//               width: 1.0,
//             ),
//             borderRadius: BorderRadius.circular(10),
//           ),
//         ),
//         obscureText: widget.obSecure,
//         keyboardType: widget.keyboardType,
//         controller: widget.controller,
//       ),
//     );
//   }
// }
