import 'package:bereal/Routes/routes.dart';
import 'package:bereal/Screens/MainScreens/main.dart';
import 'package:bereal/Themes/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.routes,
      initialRoute: AppPage.main,
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
    );
  }
}