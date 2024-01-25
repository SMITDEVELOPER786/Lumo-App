import '../controller/account_creation_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountCreationScreen.
///
/// This class ensures that the AccountCreationController is created when the
/// AccountCreationScreen is first loaded.
class AccountCreationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountCreationController());
  }
}
