import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppException {
  static void handleError(Object exception) {
    if (exception is DioError) {
      if (exception.type == DioErrorType.cancel) {
        Get.snackbar('Request Cancelled', '', backgroundColor: Colors.red);
      } else if (exception.error is SocketException) {
        Get.snackbar('no Internet connection', '', backgroundColor: Colors.red);
      } else if (exception.response?.statusCode == 400) {
        Get.snackbar(exception.response!.data['message'], '',
            backgroundColor: Colors.red);
      } else if (exception.response?.statusCode == 404) {
        Get.snackbar(exception.response!.data['message'], '',
            backgroundColor: Colors.red);
      } else if (exception.type == DioErrorType.connectTimeout) {
        Get.snackbar('Connection timeout', '', backgroundColor: Colors.red);
      } else if (exception.type == DioErrorType.receiveTimeout) {
        Get.snackbar('Receive timeout', '', backgroundColor: Colors.red);
      } else if (exception.type == DioErrorType.sendTimeout) {
        Get.snackbar('Send time out', '', backgroundColor: Colors.red);
      } else if (exception.type == DioErrorType.other) {
        Get.snackbar('Error Occured', '', backgroundColor: Colors.red);
      } else if (exception.type == DioErrorType.response) {
        Get.snackbar('Error Occured with no response', '',
            backgroundColor: Colors.red);
      }
    } else {
      Get.snackbar(exception.toString(), '', backgroundColor: Colors.red);
    }
  }
}
