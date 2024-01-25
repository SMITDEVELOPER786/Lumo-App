import '../controller/live_data_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LiveDataScreen.
///
/// This class ensures that the LiveDataController is created when the
/// LiveDataScreen is first loaded.
class LiveDataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveDataController());
  }
}
