import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/core/widgets/master_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final nameC = TextEditingController();
  final emailC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.sp, right: 24.sp, bottom: 100),
            child: MasterButton(
              onPressed: () {},
              verticalPadding: 6,
              buttonText: e.tr('edit'),
              tag: 'auth',
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          e.tr('personal_info'),
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 18),
                Stack(
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                    ),
                    const CircleAvatar(maxRadius: 50),
                    Positioned.directional(
                      start: 0,
                      bottom: 0,
                      textDirection: TextDirection.ltr,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: backGroundColor,
                            border: Border.all(color: mainColor, width: 1)),
                        child: const Center(
                          child: Icon(Icons.camera_alt_outlined,
                              size: 20, color: mainColor),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                MasterTextField(
                  controller: nameC,
                  prefixIcon: Icons.person_3,
                  fillColor: backGroundColor,
                  borderColor: backGroundColor,
                ),
                const SizedBox(height: 20),
                MasterTextField(
                  controller: emailC,
                  prefixIcon: Icons.email,
                  fillColor: backGroundColor,
                  borderColor: backGroundColor,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
