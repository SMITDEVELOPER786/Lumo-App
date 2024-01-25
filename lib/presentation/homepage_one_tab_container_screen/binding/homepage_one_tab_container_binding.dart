import '../controller/homepage_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageOneTabContainerScreen.
///
/// This class ensures that the HomepageOneTabContainerController is created when the
/// HomepageOneTabContainerScreen is first loaded.
class HomepageOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageOneTabContainerController());
  }
}
