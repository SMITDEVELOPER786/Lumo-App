import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/choose_guardian_screen/models/choose_guardian_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ChooseGuardianScreen.
///
/// This class manages the state of the ChooseGuardianScreen, including the
/// current chooseGuardianModelObj
class ChooseGuardianController extends GetxController {
  TextEditingController nameEditTextController = TextEditingController();

  TextEditingController genderEditTextController = TextEditingController();

  TextEditingController dateOfBirthEditTextController = TextEditingController();

  TextEditingController languagesSpokenEditTextController =
      TextEditingController();

  Rx<ChooseGuardianModel> chooseGuardianModelObj = ChooseGuardianModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameEditTextController.dispose();
    genderEditTextController.dispose();
    dateOfBirthEditTextController.dispose();
    languagesSpokenEditTextController.dispose();
  }
}
