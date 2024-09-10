import 'package:flutter/material.dart';
import 'package:getx_practise/res/getx_localizations/languages.dart';
import 'package:getx_practise/res/routes/routes.dart';
import 'package:getx_practise/view/splash_screen.dart';
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
      title: 'GetX Practise',
      translations: Languages(),
      locale: Locale('bn','BD'),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
           primarySwatch: Colors.blue
      ),
      debugShowCheckedModeBanner: false,

     getPages: AppRoutes.appRoutes(),
    );
  }
}

