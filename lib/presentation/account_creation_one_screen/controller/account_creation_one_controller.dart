import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_one_screen/models/account_creation_one_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

/// A controller class for the AccountCreationOneScreen.
///
/// This class manages the state of the AccountCreationOneScreen, including the
/// current accountCreationOneModelObj
class AccountCreationOneController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<AccountCreationOneModel> accountCreationOneModelObj =
      AccountCreationOneModel().obs;

  Rx<Country> selectedCountry =
      CountryPickerUtils.getCountryByPhoneCode('91').obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }

  onSelected(dynamic value) {
    for (var element
        in accountCreationOneModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    accountCreationOneModelObj.value.dropdownItemList.refresh();
  }
}
