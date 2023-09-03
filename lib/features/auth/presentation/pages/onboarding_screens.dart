import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/features/auth/presentation/pages/login_screen.dart';
import 'package:mit/injection_container.dart';

import '../../../../core/constant/colors/colors.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  List<String> images = [secondONBoarding, firstONBoarding, thirdONBoarding];
  final controller = PageController();
  bool isLast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          if (index == (images.length - 1) && !isLast) {
            setState(() => isLast = true);
          } else if (isLast) {
            setState(() => isLast = false);
          }
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            color: backGroundColor,
            height: double.infinity,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Image.asset(upONBoarding),
                      Positioned(
                        top: 40.sp,
                        right: 40,
                        left: 40,
                        child: Image.asset(images[index]),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: Stack(
                    children: [
                      Image.asset(downONBoarding),
                      Positioned(
                        bottom: 70,
                        left: 24,
                        right: 24,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              tr('onboarding1'),
                              textAlign: TextAlign.center,
                              style: TextStyles.textViewRegular15
                                  .copyWith(color: white),
                            ),
                            SizedBox(height: 60.sp),
                            !isLast
                                ? Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      MasterButton(
                                          onPressed: () {
                                            if (isLast) {
                                              sl<AppNavigator>().push(
                                                  screen: const LoginScreen());
                                            } else {
                                              controller.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.fastOutSlowIn,
                                              );
                                            }
                                          },
                                          buttonColor: white,
                                          textColor: mainButtonColor,
                                          horizontalPadding: 42,
                                          buttonText: tr('next'),
                                          tag: 'onboarding'),
                                      MasterButton(
                                          onPressed: () {
                                            sl<AppNavigator>().push(
                                                screen: const LoginScreen());
                                          },
                                          buttonColor: Colors.transparent,
                                          textColor: white,
                                          horizontalPadding: 42,
                                          buttonText: tr('skip'),
                                          tag: 'onboarding'),
                                    ],
                                  )
                                : MasterButton(
                                    onPressed: () {
                                      if (isLast) {
                                        sl<AppNavigator>()
                                            .push(screen: const LoginScreen());
                                      }
                                    },
                                    buttonColor: white,
                                    textColor: mainButtonColor,
                                    horizontalPadding: 42,
                                    buttonText: tr('start'),
                                    tag: 'onboarding'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
