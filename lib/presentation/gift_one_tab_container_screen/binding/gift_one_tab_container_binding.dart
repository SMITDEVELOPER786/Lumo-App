import '../controller/gift_one_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GiftOneTabContainerScreen.
///
/// This class ensures that the GiftOneTabContainerController is created when the
/// GiftOneTabContainerScreen is first loaded.
class GiftOneTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GiftOneTabContainerController());
  }
}
