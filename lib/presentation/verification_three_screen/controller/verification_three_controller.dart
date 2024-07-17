import 'dart:convert';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_four_screen/verification_four_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_three_screen/models/verification_three_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// A controller class for the VerificationThreeScreen.
///
/// This class manages the state of the VerificationThreeScreen, including the
/// current verificationThreeModelObj
class VerificationThreeController extends GetxController with CodeAutoFill {
  var spinkit = SpinKitRotatingCircle(
    color: Colors.black,
    size: 50.0,
  );
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationThreeModel> verificationThreeModelObj =
      VerificationThreeModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  String enteredPin = '';

  Future<void> verifyOTP(otp) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );

    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${signupToken}'
    };

    var url = Uri.parse(
        '${BaseUrl}verify-otp');
    var body = json.encode({"otp": enteredPin});

    try {
      var response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        Get.back();
        Get.snackbar("Message", "Verify OTP Sucessfully");
        var responseBody = json.decode(response.body);
         Get.lazyPut(()=>VerificationFourScreen());
              Get.toNamed(AppRoutes.verificationFourScreen);
        // Handle the response here, you might want to update the model or perform any other actions
        print(responseBody);
      } else {
        Get.back();
        Get.snackbar("Error", "Wrong OTP");
        print('Failed to verify OTP: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Error sending OTP verification request: $e');
    }
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
