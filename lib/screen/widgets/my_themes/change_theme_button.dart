import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/home_controller.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Switch.adaptive(
      value: homeController.isDarkMode,
      onChanged: (value) {},
    );
  }
}
