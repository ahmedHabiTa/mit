import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/validator.dart';
import 'package:mit/core/widgets/master_button.dart';
import 'package:mit/core/widgets/master_textfield.dart';
import 'package:mit/features/more/presentation/widgets/management_contact_widget.dart';
import 'package:mit/features/more/presentation/widgets/social_contact_widget.dart';

// ignore: must_be_immutable
class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key});
  final TextEditingController name = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController message = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? selectedType;
  List typeList = ['order', 'suggestion', 'explanation', 'complaint', 'other'];
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
        body: Container(
          color: backGroundColor,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ManagementContactWidget(),
                const SizedBox(height: 10),
                SocialContactWidget(),
                const SizedBox(height: 25),
                Text(
                  tr('send_message'),
                  style: TextStyles.textViewMedium16
                      .copyWith(color: mainButtonColor),
                ),
                const SizedBox(height: 8),
                MasterTextField(
                  controller: name,
                  validate: (String? value) => Validator.name(value),
                  hintText: tr('name'),
                  prefixIcon: Icons.person_3,
                ),
                const SizedBox(height: 8),
                MasterTextField(
                  controller: email,
                  validate: (String? value) => Validator.email(value),
                  hintText: tr('email'),
                  prefixIcon: Icons.email,
                ),
                const SizedBox(height: 8),
                MasterTextField(
                  controller: phone,
                  validate: (String? value) => Validator.phone(value),
                  hintText: tr('phone'),
                  prefixIcon: Icons.phone_in_talk_sharp,
                ),
                const SizedBox(height: 8),
                DropdownButtonHideUnderline(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(style: BorderStyle.none)),
                    child: DropdownButton<String>(
                      value: selectedType,
                      hint: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(tr('message_type'),
                            style: TextStyles.textViewRegular16
                                .copyWith(color: mainButtonColor)),
                      ),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: mainButtonColor,
                      ),
                      elevation: 0,
                      dropdownColor: white,
                      items: List.generate(
                          typeList.length,
                          (index) => DropdownMenuItem<String>(
                                value: typeList[index],
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Text(
                                    typeList[index],
                                    style: TextStyles.textViewRegular16
                                        .copyWith(color: mainColor),
                                  ),
                                ),
                              )),
                      onChanged: (value) {},
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                MasterTextField(
                  controller: message,
                  validate: (String? value) =>
                      Validator.defaultValidator(value),
                  hintText: tr('message_title'),
                  //  prefixIcon: Icons.email,
                  minLines: 4,
                  maxLines: 4,
                ),
                const SizedBox(height: 8),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.sp, vertical: 16.sp),
                  child: MasterButton(
                    onPressed: () {},
                    verticalPadding: 6,
                    buttonText: tr('send'),
                    tag: 'auth',
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )),
          ),
        ));
  }
}
