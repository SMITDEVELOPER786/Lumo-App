import '../controller/guardian_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GuardianOneTabContainerScreen.
///
/// This class ensures that the GuardianOneTabContainerController is created when the
/// GuardianOneTabContainerScreen is first loaded.
class GuardianOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GuardianOneTabContainerController());
  }
}
