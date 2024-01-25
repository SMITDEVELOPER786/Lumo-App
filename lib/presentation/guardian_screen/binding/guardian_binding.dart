import '../controller/guardian_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GuardianScreen.
///
/// This class ensures that the GuardianController is created when the
/// GuardianScreen is first loaded.
class GuardianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GuardianController());
  }
}
