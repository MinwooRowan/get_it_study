import 'package:flutter/material.dart';
import 'package:get_it_study/core/provider/user_list_provider.dart';
import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/presentation/screen/comb/viewmodel/comb_viewmodel.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CombScreen extends HookConsumerWidget {
  final CombViewmodel viewmodel;
  static const String route = 'comb';
  const CombScreen({
    super.key,
    required this.viewmodel,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logger.d(ref.read(userListProvider));
    return Scaffold(
      appBar: AppBar(
        title: Text('Comb Screen'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                viewmodel.getUserList.execute();
                context.goNamed(HomeScreen.route);
              },
              child: Text('BACK'),
            ),
          ],
        ),
      ),
    );
  }
}
