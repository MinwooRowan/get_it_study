import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String route = 'splash';
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('Splash'),
        ),
      ),
    );
  }
}
