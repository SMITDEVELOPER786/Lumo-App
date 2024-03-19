import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_six_screen/models/verification_six_model.dart';
import 'package:http/http.dart' as http;

/// A controller class for the VerificationSixScreen.
///
/// This class manages the state of the VerificationSixScreen, including the
/// current verificationSixModelObj
class VerificationSixController extends GetxController {
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

   void toggleSelection(int index) {
    isSelected[index] = !isSelected[index];
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
}
