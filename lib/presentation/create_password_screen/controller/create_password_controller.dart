import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/create_password_screen/models/create_password_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreatePasswordScreen.
///
/// This class manages the state of the CreatePasswordScreen, including the
/// current createPasswordModelObj
class CreatePasswordController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<CreatePasswordModel> createPasswordModelObj = CreatePasswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
