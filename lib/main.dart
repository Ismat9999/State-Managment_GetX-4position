import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:smgetx1lesson/core/config/root_binding.dart';
import 'package:smgetx1lesson/core/models/di_service.dart';
import 'package:smgetx1lesson/presantion/pages/home_page.dart';
import 'package:smgetx1lesson/presantion/pages/main_page.dart';
import 'package:smgetx1lesson/presantion/pages/splash_page.dart';
import 'package:smgetx1lesson/presantion/pages/starter_page.dart';

void main() async{
  await DIService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      initialBinding: RootBinnding(),
    );
  }
}
