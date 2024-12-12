import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameContentScreen extends HookConsumerWidget {
  static const String route = 'game-content';
  const GameContentScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Content'),
      ),
      body: const Center(
        child: Text('Game Content Screen'),
      ),
    );
  }
}
