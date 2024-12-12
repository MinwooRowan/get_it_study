import 'package:get_it_study/di/configurations.dart';
import 'package:get_it_study/presentation/screen/common/error_screen.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';
import 'package:get_it_study/presentation/screen/home/view_model/home_view_model.dart';
import 'package:get_it_study/presentation/screen/learning/content_guide_screen.dart';
import 'package:get_it_study/presentation/screen/learning/view_model/content_guide_view_model.dart';

import 'package:get_it_study/presentation/screen/splash/root_screen.dart';
import 'package:get_it_study/presentation/screen/splash/splash_screen.dart';
import 'package:get_it_study/presentation/screen/user_detail/user_detail_screen.dart';
import 'package:get_it_study/presentation/screen/user_detail/view_model/user_detail_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: '/${ContentGuideScreen.route}',
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (context, state) => RootScreen(),
        routes: [
          GoRoute(
            path: SplashScreen.route,
            name: SplashScreen.route,
            builder: (context, state) => SplashScreen(),
            routes: [],
          ),
          GoRoute(
            path: ContentGuideScreen.route,
            name: ContentGuideScreen.route,
            builder: (context, state) {
              final ContentGuideViewModel viewModel = getIt<ContentGuideViewModel>(param1: ref);
              viewModel.getCurrentRound.execute();

              return ContentGuideScreen(viewModel: viewModel);
            },
            routes: [],
          ),
          GoRoute(
            path: HomeScreen.route,
            name: HomeScreen.route,
            builder: (context, state) {
              final HomeViewModel viewModel = getIt<HomeViewModel>(param1: ref);
              viewModel.getUserList.execute();

              return HomeScreen(viewModel: viewModel);
            },
            routes: [
              GoRoute(
                path: '${HomeScreen.route}/:id',
                name: UserDetailScreen.route,
                builder: (context, state) {
                  final int? id = int.tryParse(state.pathParameters['id'] ?? '');
                  if (id == null) {
                    return ErrorScreen();
                  }

                  final UserDetailViewModel viewmodel = getIt<UserDetailViewModel>(
                    param1: ref,
                    param2: id,
                  );
                  viewmodel.getUserDetail.execute(id);

                  return UserDetailScreen(viewModel: viewmodel);
                },
                routes: [],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
