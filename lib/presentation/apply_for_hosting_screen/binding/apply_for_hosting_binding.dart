import '../controller/apply_for_hosting_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ApplyForHostingScreen.
///
/// This class ensures that the ApplyForHostingController is created when the
/// ApplyForHostingScreen is first loaded.
class ApplyForHostingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApplyForHostingController());
  }
}
