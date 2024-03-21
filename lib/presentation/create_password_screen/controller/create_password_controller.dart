import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/create_password_screen/models/create_password_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/verification_two_screen/verification_two_screen.dart';

/// A controller class for the CreatePasswordScreen.
///
/// This class manages the state of the CreatePasswordScreen, including the
/// current createPasswordModelObj
class CreatePasswordController extends GetxController {
  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();
  var isLoading = false.obs;

  Rx<CreatePasswordModel> createPasswordModelObj = CreatePasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    newpasswordController.dispose();
    confirmpasswordController.dispose();
  }

   Future<void> updatePassword(String newpassword, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json',"Authorization":"Bearer $authToken"};
    var body = json.encode({"newPassword": newpassword});

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}change-password'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 200) {
        // authToken = res_data["token"];

        Get.back();
        Get.snackbar("Success", res_data["message"]);
        Get.lazyPut(() => VerificationTwoScreen());
        Get.toNamed(AppRoutes.verificationTwoScreen);
      } else {
        Get.back();
        Get.snackbar(
            "Error",
            res_data["message"] == "user not fount"  ? "User not found" : res_data["message"]);
        print(res_data);
        // Handle other status codes, if needed
      }
    } catch (e) {
      print('Error occurred: $e');
      Get.back();
       Get.snackbar(
            "Error","Error");
      // Handle error, such as network issue
    } finally {
      isLoading(false); // Set loading state to false when API request finishes
    }
  }

}
