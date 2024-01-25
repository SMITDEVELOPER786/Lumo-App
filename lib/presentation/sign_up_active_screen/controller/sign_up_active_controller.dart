import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/sign_up_active_screen/models/sign_up_active_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpActiveScreen.
///
/// This class manages the state of the SignUpActiveScreen, including the
/// current signUpActiveModelObj
class SignUpActiveController extends GetxController {TextEditingController weburlController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpActiveModel> signUpActiveModelObj = SignUpActiveModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> checkSquare = false.obs;

@override void onClose() { super.onClose(); weburlController.dispose(); passwordController.dispose(); } 
 }
