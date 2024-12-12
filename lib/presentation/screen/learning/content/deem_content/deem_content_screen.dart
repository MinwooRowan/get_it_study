import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeemContentScreen extends HookConsumerWidget {
  static const String route = 'deem-content';
  const DeemContentScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deem Content'),
      ),
      body: const Center(
        child: Text('Deem Content Screen'),
      ),
    );
  }
}
