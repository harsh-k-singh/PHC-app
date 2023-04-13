import "package:flutter/material.dart";
import 'package:phc_app/pages/aboutus.dart';
import 'package:phc_app/pages/home_page.dart';
import 'package:phc_app/pages/login_page.dart';
import 'package:phc_app/pages/schedule.dart';
import 'package:phc_app/utils/routes.dart';
import 'package:phc_app/widgets/themes.dart';
// ignore: duplicate_import
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(PhcApp());
}

class PhcApp extends StatelessWidget {
  PhcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      //initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.aboutus: (context) => About(),
        MyRoutes.schedule: (context) => Schedule(),
      },
    );
  }
}
