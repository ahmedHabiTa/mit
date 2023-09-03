import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Text(
          tr('contact_us'),
          style: TextStyles.textViewBold20,
        ),
        centerTitle: true,
      ),
    );
  }
}
