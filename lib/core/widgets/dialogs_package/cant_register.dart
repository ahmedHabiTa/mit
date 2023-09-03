import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/master_button.dart';
import '../../../../../core/widgets/space.dart';
import '../../../../core/constant/colors/colors.dart';
import '../../../../core/constant/styles/styles.dart';

class CantRegisterAlert extends StatelessWidget {
  const CantRegisterAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Simple Alert Dialog'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CantRegisterDialog();
                });
          },
        ),
      ),
    );
  }
}

class CantRegisterDialog extends StatelessWidget {
  const CantRegisterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      title: Column(
        children: <Widget>[
          // Lottie.asset(
          //     loginLottie,
          //     width: 135.w
          // ),

          Text(
            tr('cant_register'),
            textAlign: TextAlign.center,
            style: TextStyles.textViewMedium25.copyWith(color: mainColor),
          ),
          const Space(boxHeight: 20),
          MasterButton(
            tag: 'ok',
            buttonText: tr('ok'),
            onPressed: () {},
          ),
        ],
      ),
    );
    // titleTextStyle: TextStyles..copyWith(color: inProgressColor),
  }
}
