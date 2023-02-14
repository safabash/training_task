import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/screen/hive/hive_edit_page.dart';

import 'package:training_task/screen/widgets/bottom_sheet.dart';

import '../../controller/hive_controller.dart';

class HivePage extends StatelessWidget {
  const HivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final hiveController = Get.put(HiveController());
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.skip_previous),
            onPressed: () => Get.back(),
          ),
          title: const Text('Hive'),
        ),
        body: SafeArea(
            child: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: hiveController.studentList.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text(hiveController.studentList[index].name),
                  subtitle: Text(hiveController.studentList[index].age),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      IconButton(
                          onPressed: () => Get.to(EditPage(index: index)),
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            hiveController.deleteStudents(
                                hiveController.studentList[index].id!);
                          },
                          icon: const Icon(Icons.delete)),
                    ],
                  ));
            },
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BottomSheetWidget().showBottomSheet(context);
          },
          child: const Text('Add'),
        ));
  }
}
