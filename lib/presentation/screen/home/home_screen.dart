import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('home'),
      ),
    );
  }
}