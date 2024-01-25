import '../controller/homepage_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageTwoScreen.
///
/// This class ensures that the HomepageTwoController is created when the
/// HomepageTwoScreen is first loaded.
class HomepageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageTwoController());
  }
}
