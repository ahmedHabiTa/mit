import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';

class CustomMoreIconWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final IconData icon;
  const CustomMoreIconWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75.h,
        width: 320,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            Icon(
              icon,
              color: mainColor,
              size: 20,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyles.textViewRegular18,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}

class CustomMoreSvgWidget extends StatelessWidget {
  final Function() onTap;
  final String text;
  final String png;
  const CustomMoreSvgWidget({
    super.key,
    required this.onTap,
    required this.text,
    required this.png,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 75.h,
        width: 320,
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 15),
            Image.asset(
              png,
              fit: BoxFit.fill,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyles.textViewRegular18,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios,
              size: 20,
            ),
            const SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
