import '../controller/mall_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MallScreen.
///
/// This class ensures that the MallController is created when the
/// MallScreen is first loaded.
class MallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MallController());
  }
}
