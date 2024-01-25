import '../controller/vip_7_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Vip7Screen.
///
/// This class ensures that the Vip7Controller is created when the
/// Vip7Screen is first loaded.
class Vip7Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Vip7Controller());
  }
}
