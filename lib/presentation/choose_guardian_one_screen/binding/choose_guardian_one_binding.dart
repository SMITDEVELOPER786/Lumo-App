import '../controller/choose_guardian_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChooseGuardianOneScreen.
///
/// This class ensures that the ChooseGuardianOneController is created when the
/// ChooseGuardianOneScreen is first loaded.
class ChooseGuardianOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChooseGuardianOneController());
  }
}
