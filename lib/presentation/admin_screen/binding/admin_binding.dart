import '../controller/admin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AdminScreen.
///
/// This class ensures that the AdminController is created when the
/// AdminScreen is first loaded.
class AdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminController());
  }
}
