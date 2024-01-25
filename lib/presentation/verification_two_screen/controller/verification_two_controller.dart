import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_two_screen/models/verification_two_model.dart';

/// A controller class for the VerificationTwoScreen.
///
/// This class manages the state of the VerificationTwoScreen, including the
/// current verificationTwoModelObj
class VerificationTwoController extends GetxController {
  Rx<VerificationTwoModel> verificationTwoModelObj = VerificationTwoModel().obs;
}
