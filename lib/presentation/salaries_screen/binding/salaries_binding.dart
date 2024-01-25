import '../controller/salaries_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SalariesScreen.
///
/// This class ensures that the SalariesController is created when the
/// SalariesScreen is first loaded.
class SalariesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SalariesController());
  }
}
