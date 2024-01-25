import '../controller/messages_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MessagesOneScreen.
///
/// This class ensures that the MessagesOneController is created when the
/// MessagesOneScreen is first loaded.
class MessagesOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessagesOneController());
  }
}
