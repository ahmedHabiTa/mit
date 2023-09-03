import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mit/core/constant/size_config.dart';
import 'package:mit/core/constant/styles/styles.dart';
import 'package:mit/core/util/api_basehelper.dart';
import 'package:mit/core/util/navigator.dart';
import 'package:mit/features/more/presentation/pages/more_screen.dart';
import 'package:mit/injection_container.dart';

import '/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ar'), Locale('en')],
      path: 'assets/translate',
      saveLocale: true,
      useOnlyLangCode: true,
      startLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIT Provider',
      debugShowCheckedModeBanner: false,
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      theme: CustomMaterialAppTheme.mainThemeData,
      navigatorKey: sl<AppNavigator>().navigatorKey,
      home: const MITProviderApp(),
    );
  }
}

class MITProviderApp extends StatefulWidget {
  const MITProviderApp({super.key});

  @override
  State<MITProviderApp> createState() => _MITProviderAppState();
}

class _MITProviderAppState extends State<MITProviderApp> {
  @override
  void initState() {
    super.initState();
    Future<void>.microtask(() {
      final String local =
          EasyLocalization.of(context)!.currentLocale!.languageCode;
      sl<ApiBaseHelper>().updateLocalInHeaders(local);
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(428, 926));
    SizeConfig().init(context);
    return const MoreScreen();
  }
}
