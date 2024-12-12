import 'package:flutter/material.dart';
import 'package:get_it_study/core/util/logger.dart';

import 'package:get_it_study/di/configurations.dart';
import 'package:get_it_study/environment/flavor.dart';

class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    final FlavorEnum flavor = await FlavorSetting.getFlavorType();
    logger.d(flavor.value);
    configureDependencies(environment: flavor.value);
  }
}
