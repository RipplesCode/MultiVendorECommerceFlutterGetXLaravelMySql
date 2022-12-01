import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multivendor_ecommerce_flutter_getx/app/core/utils/get_storage_key.dart';

class ThemeHelper {
  final _getStorage = GetStorage();

  bool loadTheme() => _getStorage.read(GetStorageKey.isDarkMode) ?? false;

  ThemeMode get theme => loadTheme() ? ThemeMode.dark : ThemeMode.light;

  saveTheme(bool isDarkMode) =>
      _getStorage.write(GetStorageKey.isDarkMode, isDarkMode);

  void switchTheme() {
    Get.changeThemeMode(loadTheme() ? ThemeMode.light : ThemeMode.dark);
    saveTheme(!loadTheme());
  }
}
