import 'package:flutter/material.dart';

import '../../constant/colors/colors.dart';
import '../../constant/styles/styles.dart';

class CustomAppBar extends AppBar implements PreferredSizeWidget {
  CustomAppBar({this.titleWidget, super.key});
  final Widget? titleWidget;

  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: blackColor,
      titleTextStyle: TextStyles.textViewBold16.copyWith(color: blackColor),
      title: titleWidget,
    );
  }
}
