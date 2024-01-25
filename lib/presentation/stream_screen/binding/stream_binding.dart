import '../controller/stream_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StreamScreen.
///
/// This class ensures that the StreamController is created when the
/// StreamScreen is first loaded.
class StreamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StreamController());
  }
}
