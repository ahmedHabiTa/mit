import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/features/notifications/presentation/pages/notifications_screen.dart';
import 'package:mit/features/profile/presentation/pages/profile_screen.dart';
import 'package:mit/injection_container.dart';

import '../../../../core/constant/colors/colors.dart';
import '../../../../core/constant/images.dart';
import '../../../../core/constant/styles/styles.dart';
import '../../../more/presentation/pages/more_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<String> iconList = <String>[
    navHome,
    navOrder,
    navService,
    navAccount,
    navMore,
  ];
  final List<String> iconListDis = <String>[
    navHomeDis,
    navOrderDis,
    navServiceDis,
    navAccountDis,
    navMoreDis,
  ];
  final List<String> textList = <String>[
    'home',
    'my_orders',
    'my_service',
    'account',
    'more',
  ];
  int selectedIndex = 0;

  List<Widget> pageList = [
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const ProfileScreen(),
    const MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: selectedIndex == 0
          ? AppBar(
              leading: const Padding(
                padding: EdgeInsetsDirectional.only(start: 4),
                child: CircleAvatar(),
              ),
              title: Text(
                tr('احمد حبيته'),
                style: TextStyles.textViewBold16,
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.all(16.sp),
                  child: GestureDetector(
                    onTap: () => sl<AppNavigator>()
                        .push(screen: const NotificationsScreen()),
                    child: Container(
                      width: 50,
                      padding: EdgeInsets.only(
                          bottom: 35.sp, left: 25.sp, right: 25.sp),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: mainColor),
                        color: lightmainColor,
                        image: const DecorationImage(
                          image: AssetImage(notificationIcon),
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const CircleAvatar(backgroundColor: red),
                    ),
                  ),
                ),
              ],
            )
          : selectedIndex == 1
              ? AppBar(
                  automaticallyImplyLeading: false,
                  centerTitle: true,
                  title: Text(
                    tr('my_orders'),
                  ),
                )
              : selectedIndex == 2
                  ? AppBar(
                      automaticallyImplyLeading: false,
                      centerTitle: true,
                      title: Text(
                        tr('my_service'),
                      ),
                    )
                  : null,
      body: pageList[selectedIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        activeIndex: selectedIndex,
        gapLocation: GapLocation.none,
        height: 70.sp,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        tabBuilder: (int index, bool isActive) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.sp),
            child: Column(
              children: <Widget>[
                Image.asset(
                  isActive ? iconList[index] : iconListDis[index],
                ),
                selectedIndex == index
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Text(
                          tr(textList[index]),
                          style: TextStyles.textViewRegular12
                              .copyWith(color: mainColor),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }
}
