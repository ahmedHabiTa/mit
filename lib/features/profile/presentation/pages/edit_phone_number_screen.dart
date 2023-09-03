import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/validator.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/core/widgets/master_textfield.dart';

class EditPhoneNumberScreen extends StatelessWidget {
  EditPhoneNumberScreen({super.key});
  final phoneC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          tr('edit_phone_number'),
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.sp, right: 24.sp, bottom: 100),
            child: MasterButton(
              onPressed: () {},
              verticalPadding: 6,
              buttonText: tr('confirm'),
              tag: 'auth',
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MasterTextField(
              controller: phoneC,
              validate: (String? value) => Validator.phone(value),
              hintText: tr('phone'),
              prefixIcon: Icons.phone_in_talk_sharp,
              suffixWidget: Container(
                width: 65.sp,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2), // Shadow color
                      spreadRadius: 1, // Spread radius
                      blurRadius: 5, // Blur radius
                      offset: const Offset(0, 2), // Offset in x and y direction
                    ),
                  ],
                  color: white,
                ),
                child: Center(
                  child: Text(
                    '05',
                    style: TextStyles.textViewBold18
                        .copyWith(color: mainColor.withOpacity(.5)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
