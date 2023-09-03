// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors/colors.dart';
import '../../../../core/constant/styles/styles.dart';

import 'side_padding.dart';
import 'space.dart';

class MasterButton extends StatelessWidget {
  final Color? buttonColor;
  final Color? borderColor;
  final Color? iconColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? buttonRadius;
  final double? sidePadding;
  final double? verticalPadding;
  final double? horizontalPadding;
  final double? iconSize;
  final String? icon;
  final String buttonText;
  final TextStyle? buttonStyle;
  final VoidCallback? onPressed;
  final String? secIcon;
  final Object tag;
  final Color? textColor;
  const MasterButton({
    Key? key,
    this.buttonColor,
    this.borderColor,
    this.iconColor,
    this.buttonHeight,
    this.buttonWidth,
    this.buttonRadius,
    this.sidePadding,
    this.verticalPadding,
    this.horizontalPadding,
    this.iconSize,
    this.icon,
    required this.buttonText,
    this.buttonStyle,
    this.onPressed,
    this.secIcon,
    required this.tag,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: SidePadding(
        sidePadding: sidePadding ?? 0,
        child: ElevatedButton(
          onPressed: () {
            onPressed!();
          },
          clipBehavior: Clip.antiAliasWithSaveLayer,
          style: ElevatedButton.styleFrom(
            foregroundColor: white,
            backgroundColor: buttonColor ?? mainButtonColor,
            // disabledForegroundColor: Colors.blue.withOpacity(0.38),
            // disabledBackgroundColor: Colors.blue.withOpacity(0.12),
            shape: RoundedRectangleBorder(
              // side: BorderSide(
              //   color: borderColor ?? mainColor,
              //   width: 2,
              // ),
              borderRadius: BorderRadius.all(Radius.circular(
                  buttonRadius == null ? 10.r : buttonRadius!.r)),
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 2.sp,
              horizontal: horizontalPadding ?? 32.sp,
            ),
            // height: buttonHeight == null ? 70.h : buttonHeight!.h,
            //  width:
            //     buttonWidth == null ? SizeConfig.screenWidth : buttonWidth!.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                if (secIcon != null)
                  Image.asset(
                    secIcon!,
                    height: iconSize,
                    color: iconColor,
                  ),
                if (secIcon != null) const Space(boxWidth: 10),
                Text(
                  buttonText,
                  style: buttonStyle ??
                      TextStyles.textViewMedium16
                          .copyWith(color: textColor ?? white),
                  textAlign: TextAlign.center,
                ),
                if (icon != null)
                  Image.asset(
                    icon!,
                    height: iconSize,
                    color: iconColor,
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
