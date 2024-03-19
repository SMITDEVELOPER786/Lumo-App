import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/verification_one_screen/verification_one_screen.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController emailController = TextEditingController();
  var isLoading = false.obs; 

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  Future<void> forgptPassword(String email, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({"email": email});

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}forgetpassword'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        // authToken = res_data["token"];

        Get.back();
        Get.snackbar("Success", res_data["message"]);
        Get.lazyPut(() => VerificationOneScreen());
        Get.toNamed(AppRoutes.verificationOneScreen);
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

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
