import '../controller/sign_up_active_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpActiveScreen.
///
/// This class ensures that the SignUpActiveController is created when the
/// SignUpActiveScreen is first loaded.
class SignUpActiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpActiveController());
  }
}
