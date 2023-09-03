import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/validator.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/core/widgets/master_textfield.dart';

class EditPasswordScreen extends StatelessWidget {
  EditPasswordScreen({super.key});
  final oldPasswordC = TextEditingController();
  final newPasswordC = TextEditingController();
  final confirmPasswordC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          tr('edit_password'),
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
              buttonText: tr('save'),
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
              isPassword: true,
              controller: oldPasswordC,
              hintText: tr('password'),
              validate: (String? value) => Validator.password(value),
              prefixIcon: Icons.lock_rounded,
            ),
            SizedBox(height: 15.sp),
            MasterTextField(
              isPassword: true,
              controller: newPasswordC,
              hintText: tr('new_password'),
              validate: (String? value) => Validator.password(value),
              prefixIcon: Icons.lock_rounded,
            ),
            SizedBox(height: 15.sp),
            MasterTextField(
              isPassword: true,
              controller: confirmPasswordC,
              hintText: tr('confirm_password'),
              validate: (String? value) => Validator.password(value),
              prefixIcon: Icons.lock_rounded,
            ),
            SizedBox(height: 15.sp),
          ],
        ),
      ),
    );
  }
}
