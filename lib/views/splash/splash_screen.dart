import 'dart:async';
import 'package:flutter/material.dart';
import '../login/helper/shr_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    CheckStatus();
  }

  Future<void> CheckStatus() async {
    bool isLoggedIn = await ShrHelper.GetStatus();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(
          context,
          isLoggedIn ? '/counter' : '/login',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome',
          style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
