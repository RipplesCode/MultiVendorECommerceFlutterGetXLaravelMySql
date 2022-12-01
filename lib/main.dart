import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multivendor_ecommerce_flutter_getx/app/core/utils/theme_helper.dart';

import 'app/core/theme/app_theme.dart';
import 'app/core/values/app_string.dart';
import 'app/routes/app_pages.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then(
    (value) =>
  runApp(
    GetMaterialApp(
      title: AppString.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
        theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeHelper().theme,
      defaultTransition: Transition.leftToRightWithFade,
    ),
  ));
}
