import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/screen/animation/animation_page.dart';
import 'package:training_task/screen/login/login_repository.dart';
import 'package:training_task/screen/login/model/login_payload_model.dart';
import 'package:training_task/screen/login/model/login_response_model.dart';

class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginResponseModel? responseModel;
  RxBool isLoading = false.obs;
  void login(String mail, String password) async {
    log('start');
    isLoading.value = true;
    await LogInRepository()
        .login(LoginPayloadModel(mobile: mail, password: password))
        .then((value) {
      responseModel = value.right;
      isLoading.value = false;
      Get.to(AnimationPage(
        mail: emailController.text,
        password: passwordController.text,
      ));
      log(responseModel!.message);
    });
  }

  void getAllAfterlogin(String mail, String password) async {
    log('start');
    isLoading.value = true;
    await LogInRepository()
        .login(LoginPayloadModel(mobile: mail, password: password))
        .then((value) {
      responseModel = value.right;
      isLoading.value = false;
      log(responseModel!.message);
    });
  }
}
