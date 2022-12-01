import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../values/app_color.dart';

class FullScreenDialogLoader {
  static void showDialog() {
    Get.dialog(
      WillPopScope(
        child: Center(
          child: SpinKitThreeBounce(
            color: Get.isDarkMode
                ? AppColor.yellowColor
                : AppColor.deepPurpleAccentColor,
            size: 50,
          ),
        ),
        onWillPop: () => Future.value(false),
      ),
      barrierDismissible: false,
      barrierColor:
          Theme.of(Get.context!).scaffoldBackgroundColor.withOpacity(0.3),
      useSafeArea: true,
    );
  }

  static void cancelDialog() {
    Get.back();
  }
}
