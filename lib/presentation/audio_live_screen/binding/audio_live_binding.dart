import '../controller/audio_live_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AudioLiveScreen.
///
/// This class ensures that the AudioLiveController is created when the
/// AudioLiveScreen is first loaded.
class AudioLiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AudioLiveController());
  }
}
