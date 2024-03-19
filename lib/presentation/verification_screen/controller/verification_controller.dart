import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/create_password_screen/create_password_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_screen/models/verification_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// A controller class for the VerificationScreen.
///
/// This class manages the state of the VerificationScreen, including the
/// current verificationModelObj
class VerificationController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  var isLoading = false.obs;

  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  String enteredPin = '';

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  Future<void> verifyOtp(String otp, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({"otp": otp});

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}verify-forget-otp'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        authToken = res_data["token"];

        Get.back();
        Get.snackbar("Success", res_data["message"]);
        Get.lazyPut(() => CreatePasswordScreen());
        Get.toNamed(AppRoutes.createPasswordScreen);
      } else {
        Get.back();
        Get.snackbar(
            "Error",
            res_data["message"] == "user not fount"
                ? "User not found"
                : res_data["message"]);
        print(res_data);
        // Handle other status codes, if needed
      }
    } catch (e) {
      print('Error occurred: $e');
      // Handle error, such as network issue
    } finally {
      isLoading(false); // Set loading state to false when API request finishes
    }
  }
}
