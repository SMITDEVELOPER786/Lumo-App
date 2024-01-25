import '../controller/verification_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationFourScreen.
///
/// This class ensures that the VerificationFourController is created when the
/// VerificationFourScreen is first loaded.
class VerificationFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationFourController());
  }
}
