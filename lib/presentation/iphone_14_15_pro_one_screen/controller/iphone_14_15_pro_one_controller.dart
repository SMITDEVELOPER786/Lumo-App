import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/iphone_14_15_pro_one_screen/models/iphone_14_15_pro_one_model.dart';

/// A controller class for the Iphone1415ProOneScreen.
///
/// This class manages the state of the Iphone1415ProOneScreen, including the
/// current iphone1415ProOneModelObj
class Iphone1415ProOneController extends GetxController {
  Rx<Iphone1415ProOneModel> iphone1415ProOneModelObj =
      Iphone1415ProOneModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(
        AppRoutes.onboardingScreen,
      );
    });
  }
}
