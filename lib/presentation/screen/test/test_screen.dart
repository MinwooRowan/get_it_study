import 'package:flutter/material.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';

import 'package:get_it_study/presentation/screen/test/viewmodel/test_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestScreen extends HookConsumerWidget {
  const TestScreen({
    super.key,
    required this.viewmodel,
  });
  final TestViewModel viewmodel;
  static const String route = 'test';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.goNamed(HomeScreen.route);
                  },
                  child: Text('GOTO COMB')),
              ListenableBuilder(
                listenable: viewmodel,
                builder: (BuildContext context, Widget? child) {
                  return viewmodel.getUserList.running
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : Column(
                          children: [
                            Text('LENGTH : ${viewmodel.userList.length}'),
                            SizedBox(height: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: viewmodel.userList.map((String name) {
                                return Text(
                                  name,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
