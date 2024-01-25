import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/request_screen/models/request_model.dart';import 'package:flutter/material.dart';/// A controller class for the RequestScreen.
///
/// This class manages the state of the RequestScreen, including the
/// current requestModelObj
class RequestController extends GetxController {TextEditingController editTextController = TextEditingController();

TextEditingController editTextController1 = TextEditingController();

Rx<RequestModel> requestModelObj = RequestModel().obs;

@override void onClose() { super.onClose(); editTextController.dispose(); editTextController1.dispose(); } 
 }
