import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import '../values/app_color.dart';

// Light Color Scheme
ColorScheme lightColorScheme = ColorScheme(
  primary: AppColor.lightPrimaryColor,
  secondary: AppColor.lightSecondaryColor,
  background: AppColor.lightPrimaryBackgroundColor,
  surface: AppColor.lightSecondaryBackgroundColor,
  onBackground: AppColor.blackColor,
  error: AppColor.darkRedColor,
  onError: AppColor.blackColor,
  onPrimary: AppColor.blackColor,
  onSecondary: AppColor.blackColor,
  onSurface: AppColor.blackColor,
  brightness: Brightness.light,
);

// Dark Color Scheme
ColorScheme darkColorScheme = ColorScheme(
  primary: AppColor.darkPrimaryColor,
  secondary: AppColor.darkSecondaryColor,
  background: AppColor.darkPrimaryBackgroundColor,
  surface: AppColor.darkSecondaryBackgroundColor,
  onBackground: AppColor.whiteColor,
  error: AppColor.darkRedColor,
  onError: AppColor.blackColor,
  onPrimary: AppColor.whiteColor,
  onSecondary: AppColor.whiteColor,
  onSurface: AppColor.whiteColor,
  brightness: Brightness.dark,
);

final Color _lightFocusColor = Colors.black.withOpacity(0.12);
final Color _darkFocusColor = Colors.white.withOpacity(0.12);

final ThemeData lightThemeData = themeData(lightColorScheme, _lightFocusColor);
final ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
  return ThemeData(
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.montserrat(
            fontSize: 16,
            color: AppColor.whiteColor,
            fontWeight: FontWeight.bold),
        color: colorScheme.brightness == Brightness.light
            ? colorScheme.primary
            : darkColorScheme.surface,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: colorScheme.brightness,
          systemNavigationBarColor: colorScheme.brightness == Brightness.light
              ? lightColorScheme.primary
              : darkColorScheme.background,
          systemNavigationBarIconBrightness:
              colorScheme.brightness == Brightness.light
                  ? Brightness.dark
                  : Brightness.light,
        ),
        iconTheme: const IconThemeData(color: AppColor.whiteColor),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.brightness == Brightness.light
          ? AppColor.lightSecondaryBackgroundColor
          : AppColor.darkSecondaryBackgroundColor,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      textTheme: TextTheme(
        titleLarge: GoogleFonts.montserrat(
          fontSize: 14,
          color: colorScheme.brightness == Brightness.light
              ? const Color(0xDD000000)
              : const Color(0xDDFFFFFF),
        ),
        titleMedium: GoogleFonts.montserrat(
            fontSize: 12,
            color: colorScheme.brightness == Brightness.light
                ? const Color(0x89000000)
                : const Color(0x89FFFFFF)),
      ),
      dividerColor: colorScheme.brightness == Brightness.light
          ? AppColor.greyColor.withOpacity(0.3)
          : AppColor.greyColor.withOpacity(0.3));
}
