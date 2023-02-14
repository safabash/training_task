import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/model/hive_model/hive_model.dart';

import '../../controller/hive_controller.dart';

class EditPage extends StatelessWidget {
  EditPage({super.key, required this.index});
  final int index;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final hiveController = Get.put(HiveController());
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: nameController,
          ),
          TextField(
            controller: ageController,
          ),
          ElevatedButton(
            child: const Text('Save'),
            onPressed: () {
              hiveController.editStudentDetails(
                  index,
                  StudentModel(
                      name: nameController.text, age: ageController.text));
              Get.back();
            },
          )
        ],
      ),
    ))));
  }
}
