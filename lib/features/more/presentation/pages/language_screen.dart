import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/images.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/api_basehelper.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/injection_container.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    String local = EasyLocalization.of(context)!.currentLocale!.languageCode;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          tr('language'),
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 18),
                Image.asset(
                  languageSelectPNG,
                  fit: BoxFit.fill,
                  height: 280.h,
                  width: 300,
                ),
                const SizedBox(height: 25),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 170.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'العربيه',
                              style: TextStyles.textViewMedium25,
                            ),
                            const SizedBox(height: 10),
                            Checkbox(
                              value: selected,
                              checkColor: white,
                              focusColor: mainColor,
                              onChanged: (value) {
                                setState(() {
                                  selected = !selected;
                                });
                              },
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 170.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "English",
                              style: TextStyles.textViewMedium25,
                            ),
                            const SizedBox(height: 10),
                            Checkbox(
                              value: !selected,
                              checkColor: white,
                              focusColor: mainColor,
                              onChanged: (value) {
                                setState(() {
                                  selected = !selected;
                                });
                              },
                            )
                          ],
                        ),
                      )
                    ]),
                const SizedBox(height: 20),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: MasterButton(
                    onPressed: () async {
                      if (selected) {
                        await EasyLocalization.of(context)!
                            .setLocale(const Locale('ar'));
                      } else {
                        await EasyLocalization.of(context)!
                            .setLocale(const Locale('en'));
                      }
                      sl<ApiBaseHelper>().updateLocalInHeaders(local);
                      sl<AppNavigator>().popToFrist();
                    },
                    verticalPadding: 6,
                    buttonText: tr('done'),
                    tag: 'auth',
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
