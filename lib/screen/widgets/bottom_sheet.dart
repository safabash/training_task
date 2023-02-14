import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/controller/hive_controller.dart';
import 'package:training_task/model/hive_model/hive_model.dart';

import '../constants.dart';

class BottomSheetWidget {
  final hiveController = Get.put(HiveController());
  void showBottomSheet(context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 200,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: hiveController.nameController,
                  ),
                  Constants.ksizedbox20,
                  TextField(
                    controller: hiveController.ageController,
                  ),
                  Constants.ksizedbox20,
                  ElevatedButton(
                      child: const Text('Save'),
                      onPressed: () {
                        hiveController.addStudent(
                          StudentModel(
                              name: hiveController.nameController.text,
                              age: hiveController.ageController.text),
                        );
                        Get.back();
                      }),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
