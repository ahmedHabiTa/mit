import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/injection_container.dart';

import '../../../../core/constant/images.dart';
import 'onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                upSplash,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 200,
              child: GestureDetector(
                onTap: () =>
                    sl<AppNavigator>().push(screen: const IntroScreen()),
                child: Stack(
                  alignment: Alignment.topCenter * 0.5,
                  children: [
                    Image.asset(
                      gifMIT,
                      height: 80.sp,
                      width: 80.sp,
                    ),
                    Center(child: Image.asset(logo)),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(downSplash),
            ),
          ],
        ),
      ),
    );
  }
}
