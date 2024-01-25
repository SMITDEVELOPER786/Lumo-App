import '../controller/verification_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationTwoScreen.
///
/// This class ensures that the VerificationTwoController is created when the
/// VerificationTwoScreen is first loaded.
class VerificationTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationTwoController());
  }
}
