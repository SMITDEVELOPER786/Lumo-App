import '../controller/verification_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationThreeScreen.
///
/// This class ensures that the VerificationThreeController is created when the
/// VerificationThreeScreen is first loaded.
class VerificationThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationThreeController());
  }
}
