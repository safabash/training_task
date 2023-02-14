import 'package:hive/hive.dart';
part 'hive_model.g.dart';

@HiveType(typeId: 1)
class StudentModel {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String age;
  @HiveField(2)
  String name;

  StudentModel({required this.name, required this.age, this.id});
}
