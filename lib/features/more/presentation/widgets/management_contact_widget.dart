import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';

class ManagementContactWidget extends StatelessWidget {
  const ManagementContactWidget({super.key});

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
                    tr('phone_numbers_management'),
                    style: TextStyles.textViewRegular15
                        .copyWith(color: mainButtonColor),
                  ),
                ),
                const Icon(Icons.call_outlined, size: 19, color: mainColor),
                const SizedBox(width: 5),
                Text(
                  '0512341234',
                  style: TextStyles.textViewMedium15.copyWith(
                      decoration: TextDecoration.underline, color: mainColor),
                ),
                const SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Expanded(child: Text('')),
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(whatsappPNG),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  '0512341234',
                  style: TextStyles.textViewMedium15.copyWith(
                      decoration: TextDecoration.underline, color: mainColor),
                ),
                const SizedBox(width: 15),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
