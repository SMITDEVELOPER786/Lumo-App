import '../controller/vip_max_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipMaxScreen.
///
/// This class ensures that the VipMaxController is created when the
/// VipMaxScreen is first loaded.
class VipMaxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipMaxController());
  }
}
