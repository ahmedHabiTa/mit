// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/features/auth/presentation/pages/login_screen.dart';

import '../../../../core/constant/images.dart';
import '../../../../core/constant/styles/styles.dart';
import '../../../../core/util/navigator.dart';
import '../../../../core/util/validator.dart';
import '../../../../core/widgets/master_button.dart';
import '../../../../core/widgets/master_textfield.dart';
import '../../../../injection_container.dart';

class RegisterPersonScreen extends StatefulWidget {
  const RegisterPersonScreen({super.key});

  @override
  State<RegisterPersonScreen> createState() => _RegisterPersonScreenState();
}

class _RegisterPersonScreenState extends State<RegisterPersonScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Hero(
                tag: 'logo',
                child: Image.asset(
                  mainLogo,
                  height: 80,
                  width: 80,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(tr('register_now_and_start_withus'),
                      style: TextStyles.textViewBold20),
                  SizedBox(height: 20.sp),
                  MasterTextField(
                    controller: name,
                    validate: (String? value) => Validator.name(value),
                    hintText: tr('name'),
                    prefixIcon: Icons.person_3,
                  ),
                  SizedBox(height: 12.sp),
                  MasterTextField(
                    controller: phone,
                    validate: (String? value) => Validator.phone(value),
                    hintText: tr('phone'),
                    prefixIcon: Icons.phone_in_talk_sharp,
                    suffixWidget: Container(
                      width: 65.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
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
                  SizedBox(height: 12.sp),
                  MasterTextField(
                    controller: email,
                    validate: (String? value) => Validator.email(value),
                    hintText: tr('email'),
                    prefixIcon: Icons.email,
                  ),
                  SizedBox(height: 12.sp),
                  MasterTextField(
                    isPassword: true,
                    controller: password,
                    hintText: tr('password'),
                    validate: (String? value) => Validator.password(value),
                    prefixIcon: Icons.lock_rounded,
                  ),
                  SizedBox(height: 12.sp),
                  MasterTextField(
                    isPassword: true,
                    controller: confirmPassword,
                    hintText: tr('confirm_password'),
                    validate: (String? value) => Validator.password(value),
                    prefixIcon: Icons.lock_rounded,
                  ),
                  SizedBox(height: 4.sp),
                  Row(
                    children: <Widget>[
                      Checkbox(
                        activeColor: mainColor,
                        value: agree,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        side: const BorderSide(color: mainColor, width: 1),
                        onChanged: (bool? val) {
                          FocusScope.of(context).unfocus();
                          setState(() {
                            agree = !agree;
                          });
                        },
                      ),
                      Wrap(
                        children: [
                          Text(tr('agree'),
                              style: TextStyles.textViewRegular16),
                          Text(tr('terms_conditions'),
                              style: TextStyles.textViewMedium16),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.sp, vertical: 8.sp),
                    child: MasterButton(
                      onPressed: () {},
                      verticalPadding: 6,
                      buttonText: tr('register'),
                      tag: 'auth',
                    ),
                  ),
                  Center(
                    child: Wrap(
                      children: [
                        Text(
                          tr('have_account'),
                          style: TextStyles.textViewRegular15
                              .copyWith(color: mainColor),
                        ),
                        SizedBox(width: 7.sp),
                        GestureDetector(
                          onTap: () => sl<AppNavigator>()
                              .push(screen: const LoginScreen()),
                          child: Text(
                            tr('login'),
                            style: TextStyles.textViewRegular15
                                .copyWith(color: mainButtonColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
