import '../controller/choose_guardian_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseGuardianScreen.
///
/// This class ensures that the ChooseGuardianController is created when the
/// ChooseGuardianScreen is first loaded.
class ChooseGuardianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseGuardianController());
  }
}
