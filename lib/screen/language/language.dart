import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:training_task/screen/language/language_controller.dart';

import '../widgets/home_buttons.dart';

class Languages extends StatelessWidget {
  const Languages({super.key});

  @override
  Widget build(BuildContext context) {
    final languageController = Get.put(LanguageController());
    return Scaffold(
      body: SafeArea(
          child: Flexible(
        fit: FlexFit.tight,
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('hello'.tr),
              HomeButtons(
                  function: () {
                    languageController.changeLanguage('hi', 'In');
                  },
                  text: 'Hindi'),
              HomeButtons(
                  function: () {
                    languageController.changeLanguage('fr', 'FR');
                  },
                  text: 'French'),
              HomeButtons(
                  function: () {
                    languageController.changeLanguage('en', 'US');
                  },
                  text: 'English'),
            ],
          ),
        ),
      )),
    );
  }
}
