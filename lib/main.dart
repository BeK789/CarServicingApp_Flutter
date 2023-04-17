import 'package:flutter/material.dart';
import 'package:mecha/screens/home/homescreen.dart';
import 'package:mecha/screens/location.dart';
import 'package:mecha/screens/main_page.dart';
import 'package:mecha/screens/onboarding/onboarding.dart';
import 'package:mecha/screens/select_model.dart';
import 'package:mecha/screens/signin/signin.dart';
import 'package:mecha/screens/signup/signup.dart';
import 'package:mecha/screens/onboarding/splash_screen.dart';
import 'screens/accesories/accesories_screen.dart';
import 'screens/myprofile/myprofile.dart';
import 'screens/select_cars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
