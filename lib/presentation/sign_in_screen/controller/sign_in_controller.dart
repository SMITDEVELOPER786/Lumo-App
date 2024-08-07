import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/edit_profile_screen/usermodel.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercoincontroller.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';

import '../../homepage_three_page/USerModel.dart';
import '../../verification_four_screen/verification_four_screen.dart';

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

  Future<void> signUpGoogle(data, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode(data);
    final usercontroller = Get.put(UserController());

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}social-auth'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 200 &&
          res_data["message"] == "User registered successfully") {
        signupToken = res_data["token"];

        Get.back();
        Get.snackbar("Success", "success");
        // Get.snackbar("Message", "OTP has been sent on your email");

        Get.toNamed(AppRoutes.verificationFourScreen);
      } else if (response.statusCode == 200 &&
          res_data["message"] != "User registered successfully") {
        authToken = res_data["token"];
        UserID = res_data["data"]["_id"];
        userlevelImage = await getLevel(res_data["data"]["isLevel"]);

        usercontroller.User(UserModel.fromJson(res_data));
        if (res_data["data"]["isReseller"] == true) {
          coins = res_data["data"]["coins"]["coins"].toString() ?? "0";
         
        }

        Get.back();
        Get.snackbar("Success", res_data["message"].toString());
        Get.lazyPut(() => HomepageThreePage());
        Get.to(() => HomepageThreePage());
      } else {
        Get.showSnackbar(GetSnackBar(
          title: "${res_data["message"]}",
        ));
        print(response.reasonPhrase);
        // Handle other status codes, if needed
      }
    } catch (e) {
      print('Error occurred: $e');
      // Handle error, such as network issue
    } finally {
      isLoading(false); // Set loading state to false when API request finishes
    }
  }

  Future<void> signIn(String email, String password, context) async {
    final usercontroller = Get.put(UserController());
    // final UserCoinController coinController = Get.put(UserCoinController());
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

      if (response.statusCode == 200) {
        authToken = res_data["token"];
        UserID = res_data["data"]["_id"];
        if (res_data["data"]["isReseller"] == true) {
          coins = res_data["data"]["coins"]["coins"].toString() ?? "0";
          // final userCoinsModel = UserCoinsModel.fromJson(res_data);
          // coinController
          //     .updateUserCoin(userCoinsModel); // Use the correct method here
          // coinController.setLoading(false);
        }

        // userlevelImage = await getLevel(res_data["data"]["isLevel"]);

        usercontroller.User(UserModel.fromJson(res_data));

        Get.back();
        Get.snackbar("Success", res_data["message"].toString());
        Get.lazyPut(() => HomepageThreePage());
        Get.to(() => HomepageThreePage());
      } else {
        Get.back();
        Get.snackbar(
            "Error",
            res_data["message"] == "user not fount"
                ? res_data["message"]
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

  getLevel(serialNo) async {
    var headers = {'Content-Type': 'application/json'};
    var body = json.encode({"serialNo": serialNo});

    try {
      http.Response response = await http.post(
        Uri.parse('${BaseUrl}get-level-icon'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());
      if (res_data["status"] == 200) {
        // Get.snackbar("Error", "Get ");
        return res_data["data"]["levelIcon"];
      }
    } catch (e) {
      return "";
      Get.snackbar("Error", e.toString());
    }
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
