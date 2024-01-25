import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_five_screen/models/verification_five_model.dart';

/// A controller class for the VerificationFiveScreen.
///
/// This class manages the state of the VerificationFiveScreen, including the
/// current verificationFiveModelObj
class VerificationFiveController extends GetxController {
  Rx<VerificationFiveModel> verificationFiveModelObj =
      VerificationFiveModel().obs;
}
