import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_five_screen/verification_five_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_four_screen/controller/verification_four_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_seven_screen/controller/verification_seven_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_six_screen/models/verification_six_model.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';
import 'package:path/path.dart' as path;
import 'package:http_parser/src/media_type.dart';

/// A controller class for the VerificationSixScreen.
///
/// This class manages the state of the VerificationSixScreen, including the
/// current verificationSixModelObj
class VerificationSixController extends GetxController {
  final NameorImageController = Get.put(VerificationFourController());
  final createProfileController = Get.put(VerificationSevenController());

  Rx<VerificationSixModel> verificationSixModelObj = VerificationSixModel().obs;
  var broadcasterList = [];

  getBroadcasters(data) {
    broadcasterList = data;

    print(broadcasterList);
  }

  bool isLoding = false;

  setLoading(bool val) {
    isLoding = val;
    update();
  }

  final List<bool> isSelected = [];

  String? selectedBroadcasterId;

  void toggleSelection(int index, String broadcasterId) {
    // Deselect all other broadcasters
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = false;
    }
    // Select the broadcaster at the specified index
    isSelected[index] = true;
    // Store the selected broadcaster ID
    selectedBroadcasterId = broadcasterId;
    update(); // Notify GetBuilder to rebuild the widget
  }

  getBroadcasterAPI() async {
    setLoading(true);
    var request = http.Request(
        'GET',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/get-broadcaster'));

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      setLoading(false);

      String responseBody = await response.stream.bytesToString();
      var resData = jsonDecode(responseBody);

      getBroadcasters(resData["data"]);
      print(broadcasterList);
    } else {
      print(response.reasonPhrase);
    }
  }

  createProfile({
    file,
  }) async {
    final createProfileController = Get.put(VerificationSevenController());
    final broadcastController = Get.put(VerificationSixController());
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Authorization': 'Bearer ${signupToken}'};
    var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            'https://hurt-alexandra-saim123-c534163d.koyeb.app/monzo/completeprofile'));
    request.fields.addAll({
      'username':
          NameorImageController.userNameController.value.text.toString(),
      'dateOfBirth': createProfileController.selectedDate.value.toString(),
      'gender': createProfileController.gender.value.toLowerCase(),
      'favBroadcaster': broadcastController.selectedBroadcasterId.toString()
    });
    var MyFilename = path.basename(file.path);
    var multipartFile = await http.MultipartFile.fromPath(
        'profileImage', file.path,
        filename: MyFilename, contentType: MediaType("image", "jpg"));
    request.files.add(multipartFile);
    request.headers.addAll(headers);

    try {
      http.StreamedResponse response = await request.send();
      var res = await http.Response.fromStream(response);
      var profileData = json.decode(res.body.toString());

      Get.back();
      if (response.statusCode == 200) {
        Get.snackbar("Message", "Profile created successfully");
        NameorImageController.userNameController.clear();
        // NameorImageController.imageFile = null;
        Get.lazyPut(() => VerificationFiveScreen());
        Get.toNamed(AppRoutes.verificationFiveScreen);
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
