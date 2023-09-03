import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/features/more/presentation/pages/contact_us_screen.dart';
import 'package:mit/features/more/presentation/pages/language_screen.dart';
import 'package:mit/features/more/presentation/pages/static_page_screen.dart';
import 'package:mit/features/profile/presentation/widgets/custom_more_widget.dart';
import 'package:mit/injection_container.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              height: 130,
              color: white,
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const CircleAvatar(maxRadius: 45),
                    const SizedBox(width: 10),
                    Text(
                      'احمد حبيته',
                      style: TextStyles.textViewBold18,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: contactUsPNG,
              onTap: () {
                sl<AppNavigator>().push(screen: const ContactUsScreen());
              },
              text: tr('contact_us'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: infoPNG,
              onTap: () {
                sl<AppNavigator>().push(
                    screen: StaticPageScreen(
                  png: thirdONBoarding,
                  title: tr('about_app'),
                ));
              },
              text: tr('about_app'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: temrConditionPNG,
              onTap: () {
                sl<AppNavigator>().push(
                    screen: StaticPageScreen(
                  png: termsDetailsPNG,
                  title: tr('terms_conditions'),
                ));
              },
              text: tr('terms_conditions'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: insurancePNG,
              onTap: () {
                sl<AppNavigator>().push(
                    screen: StaticPageScreen(
                  png: codeImg,
                  title: tr('privacy'),
                ));
              },
              text: tr('privacy'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: sharePNG,
              onTap: () {},
              text: tr('share_app'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: langPNG,
              onTap: () {
                sl<AppNavigator>().push(screen: const LanguageScreen());
              },
              text: tr('language'),
            ),
            const SizedBox(height: 10),
            CustomMoreSvgWidget(
              png: logoutPNG,
              onTap: () {},
              text: tr('logout'),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
