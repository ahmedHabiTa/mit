// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/colors.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.borderColor,
  }) : super(key: key);
  final Widget child;
  final Color? borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.sp),
      decoration: BoxDecoration(
        color: white,
        border: Border.all(
          width: 1,
          color: borderColor ?? white,
        ),
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: child,
    );
  }
}
