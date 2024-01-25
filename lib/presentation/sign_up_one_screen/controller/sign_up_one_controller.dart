import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_one_screen/models/sign_up_one_model.dart';

/// A controller class for the SignUpOneScreen.
///
/// This class manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;
}
