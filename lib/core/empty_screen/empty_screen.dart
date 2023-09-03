import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../constant/styles/styles.dart';

class EmptyScreenData extends StatelessWidget {
  final String text;
  final String lottie;
  const EmptyScreenData({super.key, required this.text, required this.lottie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          tr('offers'),
          style: TextStyles.textViewBold18,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Lottie.asset(lottie),
            const SizedBox(
              height: 20,
            ),
            Text(
              tr(text),
              style: TextStyles.textViewMedium22,
            ),
          ],
        ),
      ),
    );
  }
}
