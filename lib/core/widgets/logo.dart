import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LogoLottie extends StatelessWidget {
  final double logoHeight;
  final double logoWidth;
  final String lottie;
  const LogoLottie({
    Key? key,
    required this.logoHeight,
    required this.logoWidth,
    required this.lottie,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      lottie,
      height: logoHeight.h,
      width: logoWidth.w,
      fit: BoxFit.fill,
    );
  }
}
