import 'package:app_bmi/page/home_page.dart';
import 'package:app_bmi/page/splash_page.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        // '/result-page': (context) => ResultPage(),
      },
    );
  }
}
