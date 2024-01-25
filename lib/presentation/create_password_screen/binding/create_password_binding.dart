import '../controller/create_password_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePasswordScreen.
///
/// This class ensures that the CreatePasswordController is created when the
/// CreatePasswordScreen is first loaded.
class CreatePasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePasswordController());
  }
}
