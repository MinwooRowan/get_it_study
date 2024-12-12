import 'package:flutter/material.dart';
import 'package:get_it_study/domain/entity/user_detail_entity.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';
import 'package:get_it_study/presentation/screen/user_detail/provider/user_detail_provider.dart';
import 'package:get_it_study/presentation/screen/user_detail/view_model/user_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserDetailScreen extends HookConsumerWidget {
  static String routePathWithParam(String id) => '${HomeScreen.route}/$route/$id';
  static String route = 'user-detail';

  const UserDetailScreen({
    super.key,
    required this.viewModel,
  });

  final UserDetailViewModel viewModel;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('User Detail'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ref.watch(userDetailProvider).when(
              data: (UserDetailEntity detail) {
                return Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Name: ${detail.name}'),
                      SizedBox(height: 8),
                      Text('Email: ${detail.email}'),
                      SizedBox(height: 8),
                      Text('Phone: ${detail.phone}'),
                      SizedBox(height: 8),
                      Text('Address: ${detail.address}')
                    ],
                  ),
                );
              },
              error: (Object error, StackTrace? stackTrace) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Error: $error'),
                      ElevatedButton(
                        onPressed: () {
                          viewModel.getUserDetail.execute(viewModel.userId);
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
      ),
    );
  }
}
