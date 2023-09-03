import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIconButton extends StatelessWidget {
  final String icon;
  final Color color;
  final Color iconColor;
  final Function() onPressed;
  const CustomIconButton(
      {Key? key,
      required this.icon,
      required this.color,
      required this.iconColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 53.h,
        width: 65.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Image.asset(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
