import 'package:flutter/services.dart';

enum FlavorEnum {
  dev,
  qa,
  prod;

  String get value {
    switch (this) {
      case FlavorEnum.dev:
        return 'dev';
      case FlavorEnum.qa:
        return 'qa';
      case FlavorEnum.prod:
        return 'prod';
    }
  }
}

abstract class FlavorSetting {
  FlavorSetting._();

  static const String flavor = 'flavor';
  static const String getFlavorMethod = 'getFlavor';

  static Future<FlavorEnum> getFlavorType() async {
    final String? flavor =
        await const MethodChannel(FlavorSetting.flavor).invokeMethod(FlavorSetting.getFlavorMethod);

    return FlavorSetting.getFlavorByString(flavor: flavor);
  }

  static FlavorEnum getFlavorByString({required String? flavor}) {
    return switch (flavor) {
      'dev' => FlavorEnum.dev,
      'qa' => FlavorEnum.qa,
      'prod' => FlavorEnum.prod,
      _ => FlavorEnum.prod,
    };
  }
}
