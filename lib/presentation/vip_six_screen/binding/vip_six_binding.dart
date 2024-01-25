import '../controller/vip_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipSixScreen.
///
/// This class ensures that the VipSixController is created when the
/// VipSixScreen is first loaded.
class VipSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipSixController());
  }
}
