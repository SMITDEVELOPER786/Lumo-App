import '../controller/verification_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationFiveScreen.
///
/// This class ensures that the VerificationFiveController is created when the
/// VerificationFiveScreen is first loaded.
class VerificationFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationFiveController());
  }
}
