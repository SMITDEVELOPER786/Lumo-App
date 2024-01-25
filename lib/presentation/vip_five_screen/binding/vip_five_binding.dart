import '../controller/vip_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipFiveScreen.
///
/// This class ensures that the VipFiveController is created when the
/// VipFiveScreen is first loaded.
class VipFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipFiveController());
  }
}
