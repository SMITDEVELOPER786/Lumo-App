import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/salaries_screen/models/salaries_model.dart';import 'package:flutter/material.dart';/// A controller class for the SalariesScreen.
///
/// This class manages the state of the SalariesScreen, including the
/// current salariesModelObj
class SalariesController extends GetxController {TextEditingController salariesvalueController = TextEditingController();

Rx<SalariesModel> salariesModelObj = SalariesModel().obs;

@override void onClose() { super.onClose(); salariesvalueController.dispose(); } 
 }
