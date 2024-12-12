import 'package:get_it_study/di/configurations.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';
import 'package:get_it_study/presentation/screen/home/view_model/home_view_model.dart';
import 'package:get_it_study/presentation/screen/test/test_screen.dart';
import 'package:get_it_study/presentation/screen/test/viewmodel/test_view_model.dart';
import 'package:get_it_study/presentation/screen/splash/root_screen.dart';
import 'package:get_it_study/presentation/screen/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    initialLocation: '/${HomeScreen.route}',
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
            path: TestScreen.route,
            name: TestScreen.route,
            builder: (context, state) {
              final TestViewModel viewmodel = getIt<TestViewModel>(param1: 1);
              viewmodel.getUserList.execute();
              return TestScreen(viewmodel: viewmodel);
            },
            routes: [],
          ),
          GoRoute(
            path: HomeScreen.route,
            name: HomeScreen.route,
            builder: (context, state) {
              final HomeViewModel viewmodel = getIt<HomeViewModel>(param1: ref);
              viewmodel.getUserList.execute();

              return HomeScreen(viewModel: viewmodel);
            },
            routes: [],
          ),
        ],
      ),
    ],
  );
}
