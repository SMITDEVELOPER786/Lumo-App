import '../controller/verification_seven_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerificationSevenScreen.
///
/// This class ensures that the VerificationSevenController is created when the
/// VerificationSevenScreen is first loaded.
class VerificationSevenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerificationSevenController());
  }
}
