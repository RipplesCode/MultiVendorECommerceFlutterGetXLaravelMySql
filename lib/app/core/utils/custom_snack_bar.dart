import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../values/app_color.dart';

class CustomSnackBar {
  static void showErrorSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.failureRed,
      titleText: Text(
        title,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.whiteColor),
      ),
      messageText: Text(
        message,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColor.whiteColor),
      ),
      colorText: AppColor.whiteColor,
      borderRadius: 8,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      icon: const Icon(
        Icons.error_outline,
        size: 40,
        color: AppColor.whiteColor,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }

  static void showInfoSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.helpBlue,
      titleText: Text(
        title,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.whiteColor),
      ),
      messageText: Text(
        message,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColor.whiteColor),
      ),
      colorText: AppColor.whiteColor,
      borderRadius: 8,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      icon: const Icon(
        Icons.info_outline,
        size: 40,
        color: AppColor.whiteColor,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }

  static void showSuccessSnackBar({
    required BuildContext? context,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: AppColor.successGreen,
      titleText: Text(
        title,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColor.whiteColor),
      ),
      messageText: Text(
        message,
        style: Theme.of(Get.context!).textTheme.titleLarge!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: AppColor.whiteColor),
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(8),
      colorText: AppColor.whiteColor,
      borderRadius: 8,
      icon: const Icon(
        Icons.check_circle_outline,
        size: 40,
        color: AppColor.whiteColor,
      ),
      shouldIconPulse: true,
      duration: const Duration(seconds: 4),
    );
  }
}
