import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/validator.dart';

import '../../../core/constant/colors/colors.dart';
import '../../../core/constant/styles/styles.dart';

class TextFormFieldBox extends StatelessWidget {
  final String text;
  final int? maxLines;
  final Color? hintColor;
  final TextEditingController? messageController;
  final String? Function(String?) validate;
  const TextFormFieldBox(
      {Key? key,
      required this.text,
      this.maxLines,
      this.hintColor,
      this.messageController,
      this.validate = Validator.defaultEmptyValidator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0.0),
      color: white,
      child: TextFormField(
        decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: textColor, width: 1),
            ),
            focusColor: textColor,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: textColor, width: 1),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: textColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
              borderSide: const BorderSide(color: textColor, width: 1),
            ),
            hintText: text,
            hintStyle: TextStyles.textViewRegular20.copyWith(color: hintColor),
            fillColor: white,
            alignLabelWithHint: false,
            filled: true),
        keyboardType: TextInputType.multiline,
        maxLines: maxLines ?? 8,
        textInputAction: TextInputAction.done,
        controller: messageController,
        validator: validate,
      ),
    );
  }
}
