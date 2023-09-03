import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constant/colors/colors.dart';
import '../constant/styles/styles.dart';

mainAppBar({
  required String title,
  bool? centerTitle = true,
}) {
  return AppBar(
    backgroundColor: white,
    centerTitle: centerTitle ?? false,
    elevation: 0,
    title: Text(
      tr(title),
      style: TextStyles.textViewMedium25.copyWith(color: mainColor),
    ),
    automaticallyImplyLeading: false,
    leadingWidth: 5,
    leading: const SizedBox(
      width: 5,
    ),
  );
}
