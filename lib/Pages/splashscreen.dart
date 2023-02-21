import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logistics/Pages/onboardingscreen.dart';
import 'package:logistics/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnBoardingScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 52,
          backgroundColor: AppColor.colorTeal,
          child: const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/birdlogo.png"),
          ),
        ),
      ),
    );
  }
}
