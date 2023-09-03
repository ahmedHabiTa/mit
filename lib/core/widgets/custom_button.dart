// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors/colors.dart';
import '../constant/styles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    this.borderColor,
    this.backgroundColor,
  }) : super(key: key);
  final Function() onPressed;
  final String text;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        backgroundColor: backgroundColor ?? mainColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: borderColor ?? mainColor,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16.sp)),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.sp),
        child: Text(
          text,
          style: TextStyles.textViewMedium18,
        ),
      ),
    );
  }
}
