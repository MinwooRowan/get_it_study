import 'package:injectable/injectable.dart';

@singleton // or @lazySingleton
class ApiProvider {
  @disposeMethod
  void dispose() {
    // logic to dispose instance
  }
}
