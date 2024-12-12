import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class CommonViewmodel {
  CommonViewmodel(this.ref);

  final Ref ref;

  Future<void> initializer();
  void dispose();
}
