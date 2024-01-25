import '../controller/admin_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AdminOneScreen.
///
/// This class ensures that the AdminOneController is created when the
/// AdminOneScreen is first loaded.
class AdminOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminOneController());
  }
}
