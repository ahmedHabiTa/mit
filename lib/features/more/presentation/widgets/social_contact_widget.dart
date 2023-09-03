import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';

class SocialContactWidget extends StatelessWidget {
  SocialContactWidget({super.key});
  final List<String> images = [
    snapshatPNG,
    instgramPNG,
    twitterPNG,
    facebookPNG
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    tr('phone_numbers_management_social'),
                    style: TextStyles.textViewRegular15
                        .copyWith(color: mainButtonColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(images.length, (index) {
                return Image.asset(images[index]);
              }),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
