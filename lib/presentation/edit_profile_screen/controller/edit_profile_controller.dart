import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/profile_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

import 'package:http/http.dart' as http;

/// A controller class for the EditProfileScreen.
///
/// This class manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileController extends GetxController {
  var editStates = <String, bool>{}.obs;
  var textControllers = <String, TextEditingController>{};
  var genderOptions = ["male", "female", "other"].obs;
  var selectedGender = Rx<String?>(null);

  TextEditingController getTextController(String fieldName) {
    if (!textControllers.containsKey(fieldName)) {
      textControllers[fieldName] = TextEditingController();

      // Set initial text based on the field name
      switch (fieldName) {
        case 'username':
          textControllers[fieldName]!.text =
              UserController.user.data!.profileId!.username ?? '';
          break;
        case 'gender':
          selectedGender.value =
              UserController.user.data!.profileId!.gender ?? '';
          selectedGender.value =
              UserController.user.data!.profileId!.gender ?? genderOptions[0];
          break;
        case 'dateOfBirth':
          textControllers[fieldName]!.text = UserController
                  .user.data!.profileId!.dateOfBirth
                  .toString()
                  .substring(0, 10) ??
              ''; // Initial value for password, typically empty
          break;

        case 'hometown':
          textControllers[fieldName]!.text =
              UserController.user.data!.country ??
                  ''; // Initial value for password, typically empty
          break;
        case 'bio':
          textControllers[fieldName]!.text =
              UserController.user.data!.profileId!.bio ?? '';
          // Initial value for password, typically empty
          break;
        case 'language':
          textControllers[fieldName]!.text =
              UserController.user.data!.profileId!.language ?? '';
          // Initial value for password, typically empty
          break;
        case 'descSelf':
          textControllers[fieldName]!.text =
              UserController.user.data!.profileId!.descSelf ?? '';
          // Initial value for password, typically empty
          break;

        // Add more cases for other fields as needed
      }
    }
    return textControllers[fieldName]!;
  }

  EditTextController(List<String> fieldNames) {
    for (var fieldName in fieldNames) {
      editStates[fieldName] = false;
      textControllers[fieldName] = TextEditingController();
      // Initialize with current user data
      if (fieldName == "Name") {
        textControllers[fieldName]!.text =
            UserController.user.data!.profileId!.username ?? '';
      } else if (fieldName == "gender") {
        UserController.user.data!.profileId!.gender = selectedGender.value;
        UserController.user.data!.profileId!.gender =
            selectedGender.value ?? genderOptions[0];
      }
      // else if (fieldName == "Email") {
      //   textControllers[fieldName]!.text = UserController.user.data!.profileId!.email ?? '';
      // } else if (fieldName == "Phone") {
      //   textControllers[fieldName]!.text = UserController.user.data!.profileId!.phone ?? '';
      // }
      // Add other fields as needed
    }
  }

  void saveData(String fieldName) {
    if (fieldName == "Name") {
      UserController.user.data!.profileId!.username =
          textControllers[fieldName]!.text;
    }
    // else if (fieldName == "Email") {
    //   UserController.user.data!.profileId!.email = textControllers[fieldName]!.text;
    // } else if (fieldName == "Phone") {
    //   UserController.user.data!.profileId!.phone = textControllers[fieldName]!.text;
    // }
    // Add other fields similarly if needed
  }

  var tempProfileImage = ''.obs;

  @override
  void onClose() {
    super.onClose();
    // nameController.dispose();
  }

  void setinTemp() {
    tempProfileImage.value =
        UserController.user.data!.profileId!.profileImage ?? '';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      update();
    });
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

  updateProfile({
    file,
  }) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Authorization': 'Bearer ${authToken}'};
    var request =
        http.MultipartRequest('PUT', Uri.parse('${BaseUrl}edit-profile'));
    request.fields.addAll({
      'username': textControllers["username"]!.text,
      'dateOfBirth': textControllers["dateOfBirth"]!.text,
      'gender': textControllers["gender"]!.text,
      'bio': textControllers["bio"]!.text,
      "language": textControllers["language"]!.text,
      "descSelf": textControllers["descSelf"]!.text,
    });
    if (imageFile.value != null) {
      request.files.add(
        await http.MultipartFile.fromPath(
            'profileImage', imageFile.value!.path),
      );
    }

    request.headers.addAll(headers);

    try {
      http.StreamedResponse response = await request.send();
      var res = await http.Response.fromStream(response);
      var profileData = json.decode(res.body.toString());

      // Get.back();
      if (response.statusCode == 200) {
        profileData["data"]["username"] =
            UserController.user.data!.profileId!.username;
        profileData["data"]["dateOfBirth"] =
            UserController.user.data!.profileId!.dateOfBirth;
        profileData["data"]["gender"] =
            UserController.user.data!.profileId!.gender;
        profileData["data"]["bio"] = UserController.user.data!.profileId!.bio;
        profileData["data"]["descSelf"] =
            UserController.user.data!.profileId!.descSelf;
        profileData["data"]["descSelf"] =
            UserController.user.data!.profileId!.descSelf;
        profileData["data"]["language"] =
            UserController.user.data!.profileId!.language;
        profileData["data"]["profileImage"] =
            UserController.user.data!.profileId!.profileImage;

        Get.snackbar("Message", "Profile Updated successfully");

        // NameorImageController.userNameController.clear();
        // // NameorImageController.imageFile = null;
        Get.lazyPut(() => ProfilePage());
        Get.toNamed(AppRoutes.profilePage);
      } else {
        Get.snackbar("Error", profileData["message"]);
      }
    } catch (e) {
      Get.back();
      Get.snackbar("Error", "An error occurred while creating profile");
      print(e.toString());
    }
  }
}
