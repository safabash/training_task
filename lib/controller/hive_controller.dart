import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../model/hive_model/hive_model.dart';

class HiveController extends GetxController {
  HiveController() {
    getAllStudents();
  }
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final studentList = <StudentModel>[].obs;

  Future<void> addStudent(StudentModel value) async {
    final studentDB = await Hive.openBox<StudentModel>('student_db');

    final id = await studentDB.add(value);
    value.id = id;
    studentList.add(value);

    getAllStudents();
  }

  Future<List<StudentModel>> getAllStudents() async {
    final studentDB = await Hive.openBox<StudentModel>('student_db');
    studentList.clear();
    studentList.addAll(studentDB.values);
    return studentList;
  }

  Future<void> deleteStudents(int id) async {
    final studentDB = await Hive.openBox<StudentModel>('student_db');
    await studentDB.deleteAt(0);
    log('delete');
    getAllStudents();
  }

  Future<void> editStudentDetails(int id, StudentModel value) async {
    final studentDB = await Hive.openBox<StudentModel>('student_db');
    await studentDB.putAt(id, value);
    getAllStudents();
    log('edit');
  }
}
