import '../controller/pk_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PkScreen.
///
/// This class ensures that the PkController is created when the
/// PkScreen is first loaded.
class PkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PkController());
  }
}
