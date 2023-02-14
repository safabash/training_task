import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:training_task/screen/home/home.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_task/screen/widgets/my_themes/themes.dart';
import 'package:training_task/utils/messages/message_languages.dart';

import 'model/hive_model/hive_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      theme: MyThemes.myTheme,
      home: const MyHomePage(),
    );
  }
}
