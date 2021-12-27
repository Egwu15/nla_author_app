import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ThemeServce {
  ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple,
    scaffoldBackgroundColor: Color(0xffDBDBE3),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.green,
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  setThemeFromTime() {
    if (DateTime.now().hour <= 17 && DateTime.now().hour > 6) {
      Get.changeTheme(_lightTheme);
    } else
      Get.changeTheme(_darkTheme);
  }

  switchTheme() {
    Get.changeTheme(Get.isDarkMode ? _lightTheme : _darkTheme);
  }
}
