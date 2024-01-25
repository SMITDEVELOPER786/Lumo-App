import '../controller/request_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RequestScreen.
///
/// This class ensures that the RequestController is created when the
/// RequestScreen is first loaded.
class RequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestController());
  }
}
