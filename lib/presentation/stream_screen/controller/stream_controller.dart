import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/models/stream_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StreamScreen.
///
/// This class manages the state of the StreamScreen, including the
/// current streamModelObj
class StreamController extends GetxController
    with GetSingleTickerProviderStateMixin {
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

  final ImagePicker _picker = ImagePicker();
  Rx<File?> imageFile = Rx<File?>(null); // Rx variable to hold the image file

  Future<void> pickImageFromGallery() async {
    final XFile? xFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );

    if (xFile != null && xFile.path != null) {
      print("Selected file path: ${xFile.path}");
      imageFile.value = File(
          xFile.path); // Update the imageFile value with the picked image file
      print("imageFile data: ${imageFile.value}");
    } else {
      print("Failed to select an image");
    }
    update();
  }

  var streamType = "Public".obs;

  var streamlist = [
    "Public",
    "Private",
  ].obs;
  SelectStreamType(value) {
    streamType.value = value;
    update();
  }

   final tags = [
 "#Video",
 "#LiveStreaming",
 "#Public",
 "#Private" ,
    // Add more tags as needed
  ].obs;
  final List<bool> selectedTags = List.filled(4, false).obs;

  void toggleTagSelection(int index) {
    selectedTags[index] = !selectedTags[index];
  }
}
