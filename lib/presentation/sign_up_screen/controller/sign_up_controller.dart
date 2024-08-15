import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_one_screen/account_creation_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpScreen.
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_four_screen/verification_four_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_five_screen/global.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../homepage_three_page/USerModel.dart';
import '../../homepage_three_page/homepage_three_page.dart';
import '../../sign_in_screen/controller/usercontroller.dart';

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
  RxString userCountry = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchUserCountry();
  }

  Future<void> fetchUserCountry() async {
    if (await Permission.location.request().isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.high);
        List<Placemark> placemarks = await placemarkFromCoordinates(
            position.latitude, position.longitude);

        if (placemarks.isNotEmpty) {
          userCountry.value = placemarks[0].country ?? 'unknown';
        }
      } catch (e) {
        print("Error getting location: $e");
        userCountry.value = 'Unknown';
      }
    } else {
      print("Location permission denied");
      userCountry.value = 'unknown';
    }
  }

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

        Get.lazyPut(() => VerificationFourScreen());
        Get.toNamed(AppRoutes.verificationFourScreen);
      } else if (response.statusCode == 200 &&
          res_data["message"] != "User registered successfully") {
        authToken = res_data["token"];
        UserID = res_data["data"]["_id"];
        authToken = res_data["token"];
        UserID = res_data["data"]["_id"];
        userlevelImage = await getLevel(res_data["data"]["isLevel"]);

        usercontroller.User(UserModel.fromJson(res_data));

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
      if (response.statusCode == 200) {
        // Get.snackbar("Error", "Get ");
        return res_data["data"]["levelIcon"];
      }
    } catch (e) {
      return "";
      Get.snackbar("Error", e.toString());
    }
  }

  signup(signupdata, context) async {
    Get.dialog(
      Center(
        child:
            CircularProgressIndicator(), // Replace this with your custom loader widget
      ),
      barrierDismissible: false,
    );
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/signup'));
    request.body = json.encode({
      "email": signupdata["email"],
      "password": signupdata["password"] == "unknown"
          ? "bangladesh"
          : signupdata["password"],
      "country": "pakistan",
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      // Adjusted to check for 200 status code
      var res_data = json.decode(await response.stream.bytesToString());
      signupToken = res_data["token"];

      Get.back();
      Get.snackbar("Success", "Otp sent to your registered email");
      Get.lazyPut(() => AccountCreationOneScreen());
      Get.toNamed(AppRoutes.accountCreationOneScreen);
      print(await response.stream.bytesToString());
    } else {
      Get.back();
      var errorMessage = await response.stream.bytesToString();
      Get.snackbar("Error", "Failed to sign up: $errorMessage");
      print('Error: ${response.reasonPhrase}');
    }
  }
  // Future<void> signUp(
  //     String email, String password, String country, context) async {
  //   Get.dialog(
  //     Center(
  //       child:
  //           CircularProgressIndicator(), // Replace this with your custom loader widget
  //     ),
  //     barrierDismissible: false,
  //   );

  //   var headers = {'Content-Type': 'application/json'};
  //   var request = http.Request(
  //       'POST',
  //       Uri.parse(
  //           'https://monzo-app-api-8822a403e3e8.herokuapp.com/monzo/signup'));
  //   request.body = json.encode({
  //     "email": email,
  //     "password": password,
  //     "country": country.toLowerCase()
  //   });
  //   request.headers.addAll(headers);

  //   try {
  //     http.StreamedResponse response = await request.send();

  //     if (response.statusCode == 201) {
  //       var res_data = json.decode(await response.stream.bytesToString());
  //       signupToken = res_data["token"];

  //       Get.back();
  //       Get.snackbar("Success", "Otp send on your registered email");
  //       // Get.snackbar("Success", res_data["message"]);

  //       Get.lazyPut(() => AccountCreationOneScreen());
  //       Get.toNamed(AppRoutes.accountCreationOneScreen);
  //     } else {
  //       var res_data = json.decode(await response.stream.bytesToString());
  //       Get.showSnackbar(GetSnackBar(
  //         title: "${res_data["message"]}",
  //       ));
  //       print(response.reasonPhrase);
  //     }
  //   } catch (e) {
  //     print('Error occurred: $e');
  //     // Handle error, such as network issue
  //   } finally {
  //     isLoading(false); // Set loading state to false when API request finishes
  //   }
  // }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
