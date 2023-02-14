import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:training_task/screen/login/login_controller.dart';

class AnimationPage extends StatelessWidget {
  const AnimationPage(
      {super.key, this.mail = '9961005004', this.password = '123456'});
  final String? mail;
  final String? password;
  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LogInController());

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        loginController.getAllAfterlogin(mail!, password!);
      },
    );
    return Scaffold(body: Center(
      child: Obx(
        () {
          return loginController.isLoading.value == true
              ? const Center(child: CircularProgressIndicator())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(loginController.responseModel!.message),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Lottie.network(
                          'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json'),
                    ),
                    SizedBox(
                        height: 100,
                        width: 100,
                        child:
                            Lottie.asset('assets/81137-seo-lottie-free.json'))
                  ],
                );
        },
      ),
    ));
  }
}
