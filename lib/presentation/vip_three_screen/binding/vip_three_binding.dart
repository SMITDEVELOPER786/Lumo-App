import '../controller/vip_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipThreeScreen.
///
/// This class ensures that the VipThreeController is created when the
/// VipThreeScreen is first loaded.
class VipThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipThreeController());
  }
}
