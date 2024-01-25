import '../controller/my_wallet_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyWalletScreen.
///
/// This class ensures that the MyWalletController is created when the
/// MyWalletScreen is first loaded.
class MyWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyWalletController());
  }
}
