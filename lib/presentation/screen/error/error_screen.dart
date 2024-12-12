import 'package:flutter/widgets.dart';
import 'package:get_it_study/presentation/widget/base/base_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ErrorScreen extends BaseScreen {
  static String route = 'error';
  const ErrorScreen({super.key});

  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    return Center(child: Text('Error Screen'));
  }
}
