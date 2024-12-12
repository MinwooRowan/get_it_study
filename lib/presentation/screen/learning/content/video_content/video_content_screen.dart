import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VideoContentScreen extends HookConsumerWidget {
  static const String route = 'video-content';
  const VideoContentScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Content'),
      ),
      body: const Center(
        child: Text('Video Content Screen'),
      ),
    );
  }
}
