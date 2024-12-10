import 'package:get_it/get_it.dart';
import 'package:get_it_study/di/configurations.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() => getIt.init();
