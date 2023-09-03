// // ignore_for_file: public_member_api_docs, sort_constructors_first, unnecessary_null_comparison
// import 'dart:developer';

// import 'package:easy_localization/easy_localization.dart' as e;
// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';

// import 'package:benaa/core/constant/colors/colors.dart';

// import '../../../../core/constant/styles/styles.dart';
// import '../util/validator.dart';

// class PhoneFormFeild extends StatefulWidget {
//   // final TextEditingController controller;
//   final bool obSecure;
//   final bool isClickable;
//   final bool editProfile;
//   final BorderSide? borderSide;
//   final TextInputType keyboardType;
//   final String? hintText;
//   final Function(String)? onChanged;
//   final Function? validateFunction;
//   final Function(String) selectedPhoneCountryFunc;
//   final String? initValue;
//   final TextEditingController? controller;
//   const PhoneFormFeild({
//     Key? key,
//     this.obSecure = false,
//     this.isClickable = true,
//     this.editProfile = false,
//     this.borderSide,
//     this.keyboardType = TextInputType.text,
//     this.hintText,
//     this.onChanged,
//     this.validateFunction,
//     required this.selectedPhoneCountryFunc,
//     this.initValue,
//     this.controller,
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
//     if (widget.keyboardType == TextInputType.number) {
//       //   fontFamily = "";
//       // }
//       // if (!widget.editProfile) {
//       //   widget
//       //       .selectedPhoneCountryFunc(RawyPhoneNumber.fromPN(selectedPhoneModel));
//       // } else {
//       if (widget.initValue != null) {
//         // selectedPhoneModel = PhoneNumber(
//         //   phoneNumber: widget.initValue!.phoneNumber,
//         //   isoCode: widget.initValue!.isoCode,
//         //   dialCode: widget.initValue!.dialCode,
//         // );
//       }
//     }
//   }

//   @override
//   void didUpdateWidget(covariant PhoneFormFeild oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     setState(() {});
//   }

//   PhoneNumber selectedPhoneModel = PhoneNumber(
//     phoneNumber: "",
//     isoCode: "SA",
//     dialCode: "+966",
//   );

//   @override
//   Widget build(BuildContext context) {
//     log(selectedPhoneModel.toString());
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Text(
//           e.tr("phone"),
//           style: TextStyles.textViewMedium15.copyWith(color: titleColor),
//         ),
//         // const SpaceV5BE(),
//         SizedBox(height: 12.sp),
//         Directionality(
//           textDirection: TextDirection.ltr,
//           child: InternationalPhoneNumberInput(
//             initialValue: selectedPhoneModel,
//             textFieldController: widget.controller,
//             onInputChanged: (PhoneNumber number) {
//               // widget.selectedPhoneCountryFunc(RawyPhoneNumber.fromPN(number));
//               if (selectedPhoneModel.isoCode != number.isoCode) {
//                 selectedPhoneModel = number;
//                 widget.controller?.clear();
//                 setState(() {});
//               }
//             },
//             onInputValidated: (bool status) {},
//             spaceBetweenSelectorAndTextField: 4,
//             errorMessage: e.tr("error_wrong_input"),
//             selectorConfig: const SelectorConfig(
//                 setSelectorButtonAsPrefixIcon: true,
//                 leadingPadding: 16,
//                 trailingSpace: false,
//                 selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
//             ignoreBlank: true,
//             autoValidateMode: AutovalidateMode.onUserInteraction,
//             selectorTextStyle: TextStyles.textViewRegular16,
//             textStyle: TextStyles.textViewRegular16,
//             formatInput: true,
//             hintText: selectedPhoneModel.isoCode == "SA" ? "5xxxxxxxx" : null,
//             validator: selectedPhoneModel.isoCode == "SA"
//                 ? (val) => Validator.phone(val,
//                     const PhoneModel(code: "+966", lenght: 9, startWith: "5"))
//                 : (val) => Validator.defaultEmptyValidator(val),
//             keyboardType: const TextInputType.numberWithOptions(
//                 signed: true, decimal: true),
//             inputDecoration: InputDecoration(
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               disabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10.0),
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1,
//                 ),
//               ),
//               border: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   color: borderColor,
//                   width: 1.0,
//                 ),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                   borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   borderSide: BorderSide(
//                     color: e.tr("error_wrong_input") != null ? red : textColor,
//                     width: 1,
//                     style: BorderStyle.solid,
//                   )),
//             ),
//             inputBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.circular(10.0),
//               borderSide: widget.borderSide ??
//                   BorderSide(
//                     color: borderColor,
//                     width: 1,
//                   ),
//             ),
//             onSaved: (PhoneNumber number) {
//               // widget.selectedPhoneCountryFunc(number);
//               // selectedPhoneModel = number;
//               // setState(() {});
//             },
//           ),
//         ),
//         // Directionality(
//         //   textDirection: TextDirection.ltr,
//         //   child: TextFormField(
//         //     textDirection: textDirection,
//         //     validator: (value) => Validator.phone(value, selectedPhoneModel),
//         //     onChanged: (value) {
//         //       _checkForArabicLetter(value);
//         //       if (widget.onChanged != null) widget.onChanged!(value);
//         //     },
//         //     // onChanged: widget.onChanged,
//         //     style: TextStyles.bodyText14,
//         //     decoration: InputDecoration(
//         //       hintText: widget.hintText,
//         //       contentPadding:
//         //           const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
//         //       filled: false,
//         //       focusedBorder: OutlineInputBorder(
//         //         borderRadius: BorderRadius.circular(10.0),
//         //         borderSide: const BorderSide(
//         //           color: formFieldBorder,
//         //           width: 1,
//         //         ),
//         //       ),
//         //       disabledBorder: OutlineInputBorder(
//         //         borderRadius: BorderRadius.circular(10.0),
//         //         borderSide: const BorderSide(
//         //           color: formFieldBorder,
//         //           width: 1,
//         //         ),
//         //       ),
//         //       enabledBorder: OutlineInputBorder(
//         //         borderRadius: BorderRadius.circular(10.0),
//         //         borderSide: const BorderSide(
//         //           color: formFieldBorder,
//         //           width: 1,
//         //         ),
//         //       ),
//         //       border: OutlineInputBorder(
//         //         borderSide: const BorderSide(
//         //           color: formFieldBorder,
//         //           width: 1.0,
//         //         ),
//         //         borderRadius: BorderRadius.circular(10),
//         //       ),
//         //     ),
//         //     keyboardType: TextInputType.phone,
//         //     controller: widget.controller,
//         //   ),
//         // ),
//       ],
//     );
//   }
// }

// class PhoneModel extends Equatable {
//   final String code;
//   final String startWith;
//   final int lenght;

//   const PhoneModel(
//       {required this.code, required this.lenght, required this.startWith});

//   @override
//   List<Object?> get props => [code, lenght];
// }
