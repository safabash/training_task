import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> saveAddress(context, formKey) async {
    log('red');
    if (formKey.currentState!.validate()) {
      Navigator.of(context).pop();
    }
  }

  String? nameValidator(String? value, String text) {
    if (value == null || value.isEmpty) {
      return text;
    }
    return null;
  }

  String? addressValidator(String? value, String text) {
    if (value == null || value.isEmpty) {
      return text;
    }
    return null;
  }

  String? cityValidator(String? value, String text) {
    if (value == null || value.isEmpty) {
      return text;
    }
    return null;
  }

  String? pincodeValidator(String? value, String text) {
    if (value == null || value.isEmpty) {
      return text;
    }
    if (value.length < 6) {
      return 'Please enter 6 digits';
    }
    return null;
  }

  String? phoneValidator(String? value, String text) {
    if (value == null || value.isEmpty) {
      return text;
    }
    if (value.length < 10) {
      return 'Please enter 10 digits';
    }
    return null;
  }

  void disposeField() {
    nameController.clear();
    addressController.clear();
    cityController.clear();
    pincodeController.clear();
    phoneController.clear();
  }
}
