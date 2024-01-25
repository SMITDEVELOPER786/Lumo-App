import '../controller/vip_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipTwoScreen.
///
/// This class ensures that the VipTwoController is created when the
/// VipTwoScreen is first loaded.
class VipTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipTwoController());
  }
}
