import 'package:flutter/material.dart';
import 'package:get_it_study/domain/entity/learning/content_unit_entity.dart';

import 'package:get_it_study/domain/entity/learning/round_entity.dart';
import 'package:get_it_study/presentation/screen/learning/provider/current_round_provider.dart';
import 'package:get_it_study/presentation/screen/learning/view_model/content_guide_view_model.dart';
import 'package:get_it_study/presentation/widget/base/base_screen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContentGuideScreen extends BaseScreen {
  static const String route = 'content-guide';
  const ContentGuideScreen({super.key, required this.viewModel});
  final ContentGuideViewModel viewModel;

  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    return ref.watch(currentRoundProvider).when(
          data: (RoundEntity currentRound) {
            final ContentUnitEntity? currentSeqUnit = viewModel.currentSeqUnit;
            if (currentSeqUnit == null) {
              return Center(
                child: Text('No content unit found'),
              );
            }
            return Center(child: ContentInfoWidget(contentUnit: currentSeqUnit));
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

class ContentInfoWidget extends StatelessWidget {
  final ContentUnitEntity contentUnit;
  const ContentInfoWidget({
    super.key,
    required this.contentUnit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(contentUnit.unitName),
        SizedBox(height: 20),
        Text(contentUnit.contentUnitType.name),
      ],
    );
  }
}
