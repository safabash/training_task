import 'dart:developer';

import 'package:get/get.dart';

import '../model/api_model.dart';
import '../service/api_service.dart';

class APIController extends GetxController {
  APIController() {
    getAll();
  }

  Model? model;
  RxBool isLoading = false.obs;
  void getAll() async {
    log('start');
    isLoading.value = true;
    await GetService.getService().then((value) {
      if (value != null) {
        model = value;
        isLoading.value = false;
      }
    });
    log('end');

    log(isLoading.toString());
  }
}
