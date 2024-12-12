import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DelayedRecallContentScreen extends HookConsumerWidget {
  static const String route = 'delayed-recall-content';
  const DelayedRecallContentScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delayed Recall Content'),
      ),
      body: const Center(
        child: Text('Delayed Recall Content Screen'),
      ),
    );
  }
}
