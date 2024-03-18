import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_seven_screen/models/verification_seven_model.dart';

/// A controller class for the VerificationSevenScreen.
///
/// This class manages the state of the VerificationSevenScreen, including the
/// current verificationSevenModelObj
class VerificationSevenController extends GetxController {
  Rx<VerificationSevenModel> verificationSevenModelObj =
      VerificationSevenModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  onSelected(dynamic value) {
    for (var element
        in verificationSevenModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    verificationSevenModelObj.value.dropdownItemList.refresh();
  }
}
