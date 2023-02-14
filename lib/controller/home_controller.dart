import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var themeMode = ThemeMode.dark.obs;
  bool get isDarkMode => themeMode.value == ThemeMode.dark;
}
