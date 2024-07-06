import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;
   var tempProfileImage = ''.obs;


  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
  }
  setinTemp(){
     tempProfileImage.value =  UserController.user.data!.profileId!.profileImage ?? '';
     update();
  }

  removeProfileImage() {
   tempProfileImage.value = '';
    update(); // This will trigger a UI update
  }

    bool isImageUrl(String imagePath) {
    return imagePath.startsWith('http') || imagePath.startsWith('https');
  }

  final ImagePicker _picker = ImagePicker();
  Rx<File?> imageFile = Rx<File?>(null);
  Future<void> pickImageFromGallery() async {
    final XFile? xFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 2000,
      maxHeight: 2000,
    );

    if (xFile != null && xFile.path != null) {
        imageFile.value = File(xFile.path);
         tempProfileImage.value = xFile.path;
      print("Selected file path: ${xFile.path}");
      imageFile.value = File(
          xFile.path); // Update the imageFile value with the picked image file
      print("imageFile data: ${imageFile.value}");
   
    } else {
      print("Failed to select an image");
    }
    update();
  }
}
