import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/constant/colors/colors.dart';
import '../../../../../core/constant/styles/styles.dart';
import '../../../../../core/widgets/master_button.dart';
import '../../../../../core/widgets/space.dart';

class SendMessageDialog extends StatefulWidget {
  final String text;
  final VoidCallback tap;
  final String lottie;
  const SendMessageDialog(
      {Key? key, required this.text, required this.tap, required this.lottie})
      : super(key: key);

  @override
  State<SendMessageDialog> createState() => _SendMessageDialogState();
}

class _SendMessageDialogState extends State<SendMessageDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      title: Column(
        children: <Widget>[
          Lottie.asset(widget.lottie, width: 215.w),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyles.textViewMedium25.copyWith(color: mainColor),
          ),
          const Space(boxHeight: 40),
          MasterButton(
            tag: 'ok',
            buttonText: tr('ok'),
            onPressed: widget.tap,
            borderColor: mainColor,
            buttonColor: mainColor,
            buttonHeight: 53.h,
          ),
        ],
      ),
    );
  }
}

class SendMessageDialogWithoutLottie extends StatelessWidget {
  final String text;
  final VoidCallback tap;
  final Color color;
  const SendMessageDialogWithoutLottie(
      {Key? key, required this.text, required this.tap, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      title: Column(
        children: <Widget>[
          const Space(boxHeight: 40),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyles.textViewMedium25.copyWith(color: color),
          ),
          const Space(boxHeight: 40),
          MasterButton(
            tag: 'ok',
            buttonText: tr('ok'),
            onPressed: tap,
            borderColor: mainColor,
            buttonColor: mainColor,
            buttonHeight: 53.h,
          ),
        ],
      ),
    );
  }
}
