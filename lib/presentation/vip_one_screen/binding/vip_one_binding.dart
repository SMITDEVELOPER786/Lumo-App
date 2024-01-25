import '../controller/vip_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VipOneScreen.
///
/// This class ensures that the VipOneController is created when the
/// VipOneScreen is first loaded.
class VipOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipOneController());
  }
}
