import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter/core/utils/initial_bindings.dart';
import 'package:twitter/screens/dashboard/dashboard_screen.dart';
import 'package:twitter/themes/dark_theme.dart';
import 'package:twitter/themes/light_theme.dart';

// import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter',
      initialBinding: InitialBindings(),
      themeMode: ThemeMode.system,
      theme: light,
      darkTheme: dark,
      home: Dashboard(),
    );
  }
}
