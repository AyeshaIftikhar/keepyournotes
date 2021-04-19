import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  Rx<IconData> themeIcon = Icons.wb_sunny_outlined.obs;
  Rx<Color> background = Colors.white.obs;
  Rx<Color> foreground = Colors.black.obs;
  bool darkTheme = true;

  get getBackground => this.background.value;
  get getForeground => this.foreground.value;
  get getThemeIcon => this.themeIcon.value;
  get getDarkTheme => this.darkTheme;

  void changeMode() {
    if (darkTheme) {
      Get.changeThemeMode(ThemeMode.dark);
      foreground.value = Colors.white;
      background.value = Colors.black;
      themeIcon.value = Icons.wb_sunny_outlined;
      darkTheme = !darkTheme;
    } else {
      Get.changeThemeMode(ThemeMode.light);
      foreground.value = Colors.black;
      background.value = Colors.white;
      themeIcon.value = Icons.nights_stay_outlined;
      darkTheme = !darkTheme;
    }
  }
}
