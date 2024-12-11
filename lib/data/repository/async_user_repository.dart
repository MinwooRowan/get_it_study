import 'package:injectable/injectable.dart';

@injectable
class AsyncUserRepository {
  @factoryMethod
  static Future<AsyncUserRepository> create() async {
    await Future.delayed(Duration(seconds: 2));
    return AsyncUserRepository();
  }
}
