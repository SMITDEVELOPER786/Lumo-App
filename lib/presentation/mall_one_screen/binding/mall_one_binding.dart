import '../controller/mall_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MallOneScreen.
///
/// This class ensures that the MallOneController is created when the
/// MallOneScreen is first loaded.
class MallOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MallOneController());
  }
}
