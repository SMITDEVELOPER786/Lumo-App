import '../controller/level_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LevelScreen.
///
/// This class ensures that the LevelController is created when the
/// LevelScreen is first loaded.
class LevelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LevelController());
  }
}
