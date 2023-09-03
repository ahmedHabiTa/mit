import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Space extends StatelessWidget {
  final double boxWidth;
  final double boxHeight;
  const Space({Key? key, this.boxHeight = 0, this.boxWidth = 0})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeight.h,
      width: boxWidth.w,
    );
  }
}
