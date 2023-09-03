import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/widgets/master_button.dart';
import '../../../../../core/widgets/space.dart';
import '../../../../core/constant/colors/colors.dart';
import '../../../../core/constant/styles/styles.dart';

// import '../../res/values/colors/colors.dart';
// import '../../res/values/styles/styles.dart';
// import '../comman/buttons/master_button/master_button.dart';
// import '../comman/space/space.dart';

class AFineAlert extends StatelessWidget {
  const AFineAlert({Key? key}) : super(key: key);

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
                  return const AFineDialog();
                });
          },
        ),
      ),
    );
  }
}

class AFineDialog extends StatelessWidget {
  const AFineDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      title: Column(
        children: <Widget>[
          Lottie.asset('loginLottie', width: 135.w),
          Text(
            tr('fine'),
            textAlign: TextAlign.center,
            style: TextStyles.textViewMedium25.copyWith(color: mainColor),
          ),
          const Space(boxHeight: 20),
          MasterButton(
            tag: 'ok',
            buttonText: tr('ok'),
            onPressed: () {},
            borderColor: mainColor,
            buttonColor: mainColor,
            buttonHeight: 53.h,
            buttonRadius: 50.r,
          ),
        ],
      ),
    );
    // titleTextStyle: TextStyles..copyWith(color: inProgressColor),
  }
}
