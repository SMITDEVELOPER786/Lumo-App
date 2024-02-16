import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/models/stream_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StreamScreen.
///
/// This class manages the state of the StreamScreen, including the
/// current streamModelObj
class StreamController extends GetxController
    with GetSingleTickerProviderStateMixin 
 {

   late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
  Rx<StreamModel> streamModelObj = StreamModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  onSelected(dynamic value) {
    for (var element in streamModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    streamModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in streamModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    streamModelObj.value.dropdownItemList1.refresh();
  }
}
