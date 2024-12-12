import 'package:flutter/material.dart';
import 'package:get_it_study/core/provider/user_list_provider.dart';
import 'package:get_it_study/domain/entity/user_entity.dart';
import 'package:get_it_study/presentation/screen/home/view_model/home_view_model.dart';
import 'package:get_it_study/presentation/screen/user_detail/user_detail_screen.dart';
import 'package:get_it_study/presentation/widget/base/base_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends BaseScreen {
  final HomeViewModel viewModel;
  static const String route = 'home';
  const HomeScreen({
    super.key,
    required this.viewModel,
  });
  @override
  Widget buildScreen(BuildContext context, WidgetRef ref) {
    return ref.watch(userListProvider).when(
          data: (List<UserEntity> data) {
            return Column(
              children: data
                  .map(
                    (UserEntity user) => InkWell(
                      onTap: () => context.goNamed(
                        UserDetailScreen.route,
                        pathParameters: {'id': user.id.toString()},
                      ),
                      child: ListTile(
                        title: Text(user.name),
                        subtitle: Text(user.id.toString()),
                      ),
                    ),
                  )
                  .toList(),
            );
          },
          error: (error, stackTrace) {
            return Center(child: Text('Error: $error'));
          },
          loading: () => Center(child: CircularProgressIndicator()),
        );
  }
}
