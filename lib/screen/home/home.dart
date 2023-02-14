import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/screen/animation/animation_page.dart';
import 'package:training_task/screen/constants.dart';
import 'package:training_task/screen/form/form.dart';
import 'package:training_task/screen/hive/hive_page.dart';
import 'package:training_task/screen/language/language.dart';
import 'package:training_task/screen/login/login.dart';
import 'package:training_task/screen/widgets/home_buttons.dart';
import 'package:training_task/utils/helper/responsive_helper.dart';

import '../api_calling/api_calling_exception.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: ResponsiveWidget(
            web: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeButtons(
                      function: () => Get.to(const FormPage()),
                      text: 'Form',
                    ),
                    HomeButtons(
                        function: () => Get.to(const HivePage()), text: 'Hive'),
                  ],
                ),
                Constants.ksizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeButtons(
                        function: () => Get.to(const AnimationPage()),
                        text: 'Animation'),
                    HomeButtons(
                        function: () => Get.to(const ApiCalling()),
                        text: 'API calling')
                  ],
                ),
                Constants.ksizedbox20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    HomeButtons(
                        function: () => Get.to(const LoginPage()),
                        text: 'Log In'),
                    HomeButtons(
                        function: () => Get.to(const Languages()),
                        text: 'Languages'),
                  ],
                ),
              ],
            ),
            mobile: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HomeButtons(
                  function: () => Get.to(const FormPage()),
                  text: 'Form',
                ),
                HomeButtons(
                    function: () => Get.to(const HivePage()), text: 'Hive'),
                HomeButtons(
                    function: () => Get.to(const AnimationPage()),
                    text: 'Animation'),
                HomeButtons(
                    function: () => Get.to(const ApiCalling()),
                    text: 'API calling'),
                HomeButtons(
                    function: () => Get.to(const LoginPage()), text: 'Log In'),
                HomeButtons(
                    function: () => Get.to(const Languages()),
                    text: 'Languages'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
