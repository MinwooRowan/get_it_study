import 'package:flutter/material.dart';
import 'package:get_it_study/presentation/screen/learning/content/base/content_base_screen.dart';
import 'package:get_it_study/presentation/screen/learning/content/game_content/view_model/game_content_view_model.dart';
import 'package:get_it_study/presentation/screen/learning/content_guide_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GameContentScreen extends ContentBaseScreen {
  static const String route = 'game-content';
  const GameContentScreen({
    super.key,
    required this.viewModel,
    required this.contentId,
  });

  final GameContentViewModel viewModel;
  final int contentId;
  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Game Content Screen $contentId'),
          ElevatedButton(
            onPressed: () async {
              await viewModel.postContentCompleteCommand.execute(contentId);
              if (!context.mounted) return;
              final bool isAllContentCompleted =
                  viewModel.checkAllContentCompleted();

              if (isAllContentCompleted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('모든 컨텐츠를 완료하였습니다.'),
                  ),
                );
              }
              context.goNamed(ContentGuideScreen.route);
            },
            child: Text('완료'),
          ),
        ],
      ),
    );
  }
}
