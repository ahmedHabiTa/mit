import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widgets/master_button.dart';
import '../../../../../core/widgets/space.dart';
import '../../../../core/constant/colors/colors.dart';
import '../../../../core/constant/styles/styles.dart';

class SendOrderAlert extends StatelessWidget {
  const SendOrderAlert({Key? key}) : super(key: key);

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
                  return const SendOrderDialog();
                });
          },
        ),
      ),
    );
  }
}

class SendOrderDialog extends StatelessWidget {
  const SendOrderDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      title: Column(
        children: <Widget>[
          // Lottie.asset(
          //     sendOrderLottie,
          //     width: 135.w
          // ),

          Text(
            tr('send_order'),
            textAlign: TextAlign.center,
            style: TextStyles.textViewMedium25.copyWith(color: mainColor),
          ),
          const Space(boxHeight: 20),
          MasterButton(
            tag: 'ok',
            buttonText: tr('ok'),
            onPressed: () {},
          ),
          // InkWell(
          //   onTap: () {
          //     showDialog(
          //         context: context,
          //         builder: (BuildContext context) {
          //           return const TripDetailsDialog();
          //         });
          //   },
          //   child: Container(
          //     // padding: EdgeInsets.all(10),
          //     // width: 122.w,
          //     height: 52.h,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20.r),
          //         gradient: const LinearGradient(
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //           colors: [
          //             mainColor,
          //             headerColor,
          //           ],
          //         )
          //     ),
          //     child: Center(
          //       child: Text(tr("ok"),
          //         style: TextStyles.textViewMedium15.copyWith(color: white),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
    // titleTextStyle: TextStyles..copyWith(color: inProgressColor),
  }
}
