// import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

SnackBar appSnackBar(String snackText,
        {Color color = Colors.red, seconds = 1}) =>
    SnackBar(
      content: Text(
        tr(snackText),
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: seconds),
      backgroundColor: color,
      // action: [SnackBarAction(label: tr("ok"), onPressed: (){})],
    );
