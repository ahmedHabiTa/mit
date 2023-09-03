import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';

abstract class TextStyles {
  static TextStyle textViewBold20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Somar',
    fontWeight: FontWeight.bold,
  );
  static TextStyle textViewRegular20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewUnderlineRegular15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
    decoration: TextDecoration.underline,
  );
  static TextStyle textViewUnderlineRegular17 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
    decoration: TextDecoration.underline,
  );
  static TextStyle textViewUnderlineRegular20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
    decoration: TextDecoration.underline,
  );
  static TextStyle textViewRegular17 = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium25 = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold23 = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold15 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewLineThroughBold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
    decoration: TextDecoration.lineThrough,
    color: orange,
  );
  static TextStyle textViewBold22 = TextStyle(
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewBold40 = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.bold,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular38 = TextStyle(
    fontSize: 38.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular19 = TextStyle(
    fontSize: 19.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );
  static TextStyle textViewRegular13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'Somar',
  );

  static TextStyle textViewMedium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium15Underline = TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.w600,
      fontFamily: 'Somar',
      decoration: TextDecoration.underline);
  static TextStyle textViewMedium10 = TextStyle(
    fontSize: 10.sp,
    fontFamily: 'Somar',
    fontWeight: FontWeight.w600,
  );
  static TextStyle textViewMedium12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewMedium23 = TextStyle(
    fontSize: 23.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );

  static TextStyle textViewMedium35 = TextStyle(
    fontSize: 35.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static TextStyle textViewSemiBold14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );

  static TextStyle textViewMedium30 = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w600,
    fontFamily: 'Somar',
  );
  static const String fontFamily = 'Somar';
}

abstract class CustomMaterialAppTheme {
  static ButtonStyle elevatedButtonTheme = ElevatedButton.styleFrom(
      foregroundColor: white,
      elevation: 0.0,
      backgroundColor: mainColor,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: TextStyles.fontFamily,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));
  static ButtonStyle outlineButtonTheme = OutlinedButton.styleFrom(
      elevation: 0.0,
      textStyle: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: TextStyles.fontFamily,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)));
  static AppBarTheme appBarTheme = const AppBarTheme(
      backgroundColor: Colors.transparent,
      foregroundColor: blackColor,
      titleTextStyle: TextStyle(
          fontSize: 16,
          color: blackColor,
          fontFamily: TextStyles.fontFamily,
          fontWeight: FontWeight.bold),
      elevation: 0.0,
      toolbarHeight: 75);

  static ThemeData mainThemeData = ThemeData(
      outlinedButtonTheme: OutlinedButtonThemeData(style: outlineButtonTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: CustomMaterialAppTheme.elevatedButtonTheme),
      appBarTheme: CustomMaterialAppTheme.appBarTheme,
      scaffoldBackgroundColor: backGroundColor,
      primaryColor: mainColor,
      primarySwatch: primarySwatch,
      fontFamily: TextStyles.fontFamily);
}
