import 'package:flutter/material.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';

import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/presentation/screen/learning/provider/current_round_provider.dart';
import 'package:get_it_study/presentation/screen/learning/view_model/content_guide_view_controller.dart';
import 'package:get_it_study/presentation/screen/learning/view_model/content_guide_view_model.dart';
import 'package:get_it_study/presentation/widget/base/base_screen.dart';
import 'package:get_it_study/theme/color_stytle.dart';
import 'package:get_it_study/theme/text_style.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part './widget/unit_progress_indicator_widget.dart';
part './widget/content_info_widget.dart';

class ContentGuideScreen extends BaseScreen {
  static const String route = 'content-guide';
  const ContentGuideScreen({super.key, required this.viewModel});
  final ContentGuideViewModel viewModel;

  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    return ref.watch(currentRoundProvider).when(
          data: (RoundEntity currentRound) {
            final ContentUnitEntity? currentSeqUnit =
                viewModel.currentSeqUncompleteUnit;
            if (currentSeqUnit == null) {
              return Center(
                child: Text('모든 콘텐츠를 완료했습니다'),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UnitProgressIndicatorWidget(
                  currentSeq: currentSeqUnit.seq,
                  contentUnitList: currentRound.contentUnitList,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _ContentInfoWidget(contentUnit: currentSeqUnit),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        String routeName = ref
                            .read(contentGuideProvider.notifier)
                            .getContentRouteName(
                                type: currentSeqUnit.contentUnitType);

                        context.goNamed(
                          routeName,
                          pathParameters: {'id': currentSeqUnit.id.toString()},
                        );
                      },
                      child: Text('시작하기'),
                    ),
                  ],
                ),
                SizedBox.shrink(),
              ],
            );
          },
          error: (error, stackTrace) {
            return Center(
              child: Text('Error: $error'),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
        );
  }
}
