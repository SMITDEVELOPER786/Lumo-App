import '../controller/verification_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationSixScreen.
///
/// This class ensures that the VerificationSixController is created when the
/// VerificationSixScreen is first loaded.
class VerificationSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationSixController());
  }
}
