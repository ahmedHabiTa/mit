import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/colors/colors.dart';
import '../constant/size_config.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final Widget icon;
  final Widget text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * 10,
      decoration: BoxDecoration(
          color: serviceBG, borderRadius: BorderRadius.circular(20.sp)),
      child: Row(
        children: <Widget>[IconButton(onPressed: onTap, icon: icon), text],
      ),
    );
  }
}
