import 'package:flutter/material.dart';

import '../constant/colors/colors.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BackButton(
        color: mainColor,
        onPressed: onPressed,
      ),
    );
  }
}
