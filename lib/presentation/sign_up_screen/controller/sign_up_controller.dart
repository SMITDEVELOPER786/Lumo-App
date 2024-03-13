import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_one_screen/account_creation_one_screen.dart';import 'package:muhammad_zubair_s_application4/presentation/sign_up_screen/models/sign_up_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpScreen.
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  var spinkit = SpinKitRotatingCircle(
  color: Colors.black,
  size: 50.0,
);

  TextEditingController emailController = TextEditingController();

 var isLoading = false.obs;
 
TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> checkSquare = false.obs;

Future<void> signUp(String email, String password, context) async {

  Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {
      'Content-Type': 'application/json'
    };
    var body = json.encode({
      "email": email,
      "password": password
    });

    try {
      http.Response response = await http.post(
        Uri.parse('https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/signup'),
        headers: headers,
        body: body,
      );
      var res_data = json.decode(response.body.toString());

      if (response.statusCode == 201) {
     signupToken = res_data["token"];   
        
      Get.back();
         Get.snackbar("Message", "OTP has been sent on your email");
      
     
          Get.lazyPut(()=>AccountCreationOneScreen());
                Get.toNamed(AppRoutes.accountCreationOneScreen);
      
      } else {
          Get.showSnackbar(
            GetSnackBar(

             title: "${res_data["message"]}",
            )
          );
        print(response.reasonPhrase);
        // Handle other status codes, if needed
      }
    } catch (e) {
      print('Error occurred: $e');
      // Handle error, such as network issue
    }
    finally {
      isLoading(false); // Set loading state to false when API request finishes
    }
  }


@override void onClose() { super.onClose(); emailController.dispose(); passwordController.dispose(); } 
 }
