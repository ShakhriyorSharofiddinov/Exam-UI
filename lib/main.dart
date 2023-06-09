import 'package:exams/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Exam result",
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: "RobotoCondensed-Regular",
      ),
      home: SplashPage(),
    );
  }
}
