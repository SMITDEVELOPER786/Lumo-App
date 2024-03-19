import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_four_screen/models/verification_four_model.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

/// A controller class for the VerificationFourScreen.
///
/// This class manages the state of the VerificationFourScreen, including the
/// current verificationFourModelObj
class VerificationFourController extends GetxController {

   Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Male",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Female",
    ),
  ]);

  Rx<DateTime>? selectedChooseYourDate = Rx(DateTime.now());

  Rx<String> chooseYourDate = Rx("Choose your date of birth");
  TextEditingController userNameController = TextEditingController();
  

  Rx<VerificationFourModel> verificationFourModelObj =
      VerificationFourModel().obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
  }
}
