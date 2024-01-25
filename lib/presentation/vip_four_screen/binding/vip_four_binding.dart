import '../controller/vip_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipFourScreen.
///
/// This class ensures that the VipFourController is created when the
/// VipFourScreen is first loaded.
class VipFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipFourController());
  }
}
