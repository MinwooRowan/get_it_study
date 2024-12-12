import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class CommonViewModel {
  CommonViewModel(this.ref);
  final Ref ref;

  Future<void> initializer();
  void dispose();
}
