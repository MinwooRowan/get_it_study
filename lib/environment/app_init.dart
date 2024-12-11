import 'package:flutter/material.dart';
import 'package:get_it_study/core/util/logger.dart';
import 'package:get_it_study/di/configurations.dart';

class AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    configureDependencies();
    logger.d('GET INITIALIZED');
  }
}
