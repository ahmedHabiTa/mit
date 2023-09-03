import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/core/widgets/master_textfield.dart';

import '../../../../core/util/validator.dart';
import '../../../../core/widgets/master_button.dart';
import '../../../../injection_container.dart';
import 'user_register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16.sp),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 120.sp, vertical: 80.sp),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(mainLogo),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(tr('login'), style: TextStyles.textViewBold20),
                      SizedBox(height: 24.sp),
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
                                color: Colors.grey
                                    .withOpacity(0.2), // Shadow color
                                spreadRadius: 1, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: const Offset(
                                    0, 2), // Offset in x and y direction
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
                      SizedBox(height: 18.sp),
                      MasterTextField(
                        isPassword: true,
                        controller: password,
                        hintText: tr('password'),
                        validate: (String? value) => Validator.password(value),
                        prefixIcon: Icons.lock_rounded,
                      ),
                      SizedBox(height: 15.sp),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          tr('forget_password'),
                          style: TextStyles.textViewRegular15
                              .copyWith(color: mainColor),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 120.sp),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: MasterButton(
                    onPressed: () {},
                    verticalPadding: 6,
                    buttonText: tr('login'),
                    tag: 'auth',
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      tr('dont_have_account'),
                      style: TextStyles.textViewRegular15
                          .copyWith(color: mainColor),
                    ),
                    GestureDetector(
                      onTap: () => sl<AppNavigator>()
                          .push(screen: const RegisterPersonScreen()),
                      child: Text(
                        tr('go_register'),
                        style: TextStyles.textViewRegular15
                            .copyWith(color: mainButtonColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.sp),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 20.sp),
                  child: MasterButton(
                    onPressed: () {},
                    verticalPadding: 6,
                    buttonColor: const Color(0xffF4F4F4),
                    textColor: mainButtonColor,
                    buttonText: tr('skip_guest'),
                    tag: 'skip_guest',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
