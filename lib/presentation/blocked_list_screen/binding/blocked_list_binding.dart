import '../controller/blocked_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BlockedListScreen.
///
/// This class ensures that the BlockedListController is created when the
/// BlockedListScreen is first loaded.
class BlockedListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlockedListController());
  }
}
