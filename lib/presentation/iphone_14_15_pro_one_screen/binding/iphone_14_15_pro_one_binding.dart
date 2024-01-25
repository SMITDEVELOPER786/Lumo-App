import '../controller/iphone_14_15_pro_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Iphone1415ProOneScreen.
///
/// This class ensures that the Iphone1415ProOneController is created when the
/// Iphone1415ProOneScreen is first loaded.
class Iphone1415ProOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone1415ProOneController());
  }
}
