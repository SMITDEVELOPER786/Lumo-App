import '../controller/multi_live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MultiLiveScreen.
///
/// This class ensures that the MultiLiveController is created when the
/// MultiLiveScreen is first loaded.
class MultiLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MultiLiveController());
  }
}
