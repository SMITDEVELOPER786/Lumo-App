import '../controller/live_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LiveOneScreen.
///
/// This class ensures that the LiveOneController is created when the
/// LiveOneScreen is first loaded.
class LiveOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LiveOneController());
  }
}
