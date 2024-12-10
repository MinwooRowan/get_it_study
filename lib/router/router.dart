import 'package:get_it_study/di/configurations.dart';
import 'package:get_it_study/domain/usecase/user_usecase.dart';
import 'package:get_it_study/presentation/screen/home/home_screen.dart';
import 'package:get_it_study/presentation/screen/home/viewmodel/home_viewmodel.dart';
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
            path: HomeScreen.route,
            name: HomeScreen.route,
            builder: (context, state) {
              final HomeViewmodel homeViewmodel = HomeViewmodel(
                userUsecase: getIt<UserUsecase>(),
              );
              homeViewmodel.getUserList.execute();

              return HomeScreen(viewmodel: homeViewmodel);
            },
            routes: [],
          ),
        ],
      ),
    ],
  );
}
