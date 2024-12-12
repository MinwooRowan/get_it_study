import 'package:flutter/material.dart';
import 'package:get_it_study/core/util/provider_logger.dart';
import 'package:get_it_study/environment/app_init.dart';
import 'package:get_it_study/router/router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  await AppInit.init();
  runApp(ProviderScope(
    observers: [ProviderLogger()],
    child: const MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: ref.watch(routerProvider),
    );
  }
}
