import 'package:get_it_study/core/common/viewmodel/common_viewmodel.dart';
import 'package:get_it_study/core/util/result.dart';

abstract class ContentBaseViewModel extends CommonViewModel {
  ContentBaseViewModel(super.ref);

  Future<Result<void>> postContentComplete(int id);

  bool checkAllContentCompleted();
}
