import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/live_data_screen/models/live_data_model.dart';import 'package:flutter/material.dart';/// A controller class for the LiveDataScreen.
///
/// This class manages the state of the LiveDataScreen, including the
/// current liveDataModelObj
class LiveDataController extends GetxController {TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

Rx<LiveDataModel> liveDataModelObj = LiveDataModel().obs;

SelectionPopupModel? selectedDropDownValue;

@override void onClose() { super.onClose(); editTextController.dispose(); editTextController1.dispose(); } 
onSelected(dynamic value) { for (var element in liveDataModelObj.value.dropdownItemList.value) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} liveDataModelObj.value.dropdownItemList.refresh(); } 
 }
