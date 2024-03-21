import 'dart:convert';

import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> rememberMe = false.obs;
  
  var isLoading = false.obs;

  Future<void> signIn(String email, String password, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({"email": email, "password": password});

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}login'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 201) {
        authToken = res_data["token"];

        Get.back();
        Get.snackbar("Success", res_data["message"].toString());
        Get.lazyPut(() => HomepageThreePage());
        Get.to(() => HomepageThreePage());
      } else {
        Get.back();
        Get.snackbar(
            "Error",
            res_data["message"] == "user not fount"
                ? "User not found"
                : res_data["message"].toString());
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
    passwordController.dispose();
  }
}
