import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/features/profile/presentation/pages/edit_password_screen.dart';
import 'package:mit/features/profile/presentation/pages/edit_phone_number_screen.dart';
import 'package:mit/features/profile/presentation/pages/edit_profile_screen.dart';
import 'package:mit/features/profile/presentation/widgets/custom_more_widget.dart';
import 'package:mit/injection_container.dart';

import '../../../../core/util/navigator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          tr('my_profile'),
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 18),
              const CircleAvatar(maxRadius: 70),
              const SizedBox(height: 20),
              CustomMoreIconWidget(
                icon: Icons.person_3,
                text: tr('personal_info'),
                onTap: () {
                  sl<AppNavigator>().push(screen: EditProfileScreen());
                },
              ),
              const SizedBox(height: 10),
              CustomMoreIconWidget(
                icon: Icons.call,
                text: tr('phone'),
                onTap: () {
                  sl<AppNavigator>().push(screen: EditPhoneNumberScreen());
                },
              ),
              const SizedBox(height: 10),
              CustomMoreIconWidget(
                icon: Icons.lock,
                text: tr('password'),
                onTap: () {
                  sl<AppNavigator>().push(screen: EditPasswordScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
