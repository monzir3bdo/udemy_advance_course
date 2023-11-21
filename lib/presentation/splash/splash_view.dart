import 'dart:async';

import 'package:clean_architecture/resources/colors_manager.dart';
import 'package:clean_architecture/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? timer;
  _startTimer() {
    timer = Timer(const Duration(seconds: 2), _getNextScreen);
  }

  _getNextScreen() {
    Navigator.pushReplacementNamed(context, Routes.onboarding);
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primary,
      body: const Center(
        child: Image(
          image: AssetImage('assets/images/splash_logo.png'),
        ),
      ),
    );
  }
}
