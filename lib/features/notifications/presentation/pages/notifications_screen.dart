import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/colors/colors.dart';
import 'package:mit/features/home/presentation/widgets/custom_card.dart';

import '../../../../core/constant/styles/styles.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          tr('notifications'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 24.sp),
          child: Column(
            children: [
              CustomCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Wrap(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2.sp),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: mainColor,
                          ),
                          child: const Icon(
                            Icons.notifications_outlined,
                            color: white,
                          ),
                        ),
                        SizedBox(width: 12.sp),
                        Text(
                          tr('notifications'),
                          style: TextStyles.textViewRegular16,
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: Text(
                            tr('am 06:00'),
                            style: TextStyles.textViewRegular16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
