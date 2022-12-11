import 'dart:async';

import 'package:app_bmi/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      Duration(seconds: 12),
      () => Navigator.pushNamed(context, '/home'),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 500,
          height: 300,
          child: LottieBuilder.network(
              'https://assets7.lottiefiles.com/packages/lf20_3ejhEJ/over/data.json'),
        ),
      ),
    );
  }
}
