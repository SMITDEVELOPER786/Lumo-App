import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/presentation/guardian_one_tab_container_screen/models/guardian_one_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the GuardianOneTabContainerScreen.
///
/// This class manages the state of the GuardianOneTabContainerScreen, including the
/// current guardianOneTabContainerModelObj
class GuardianOneTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<GuardianOneTabContainerModel> guardianOneTabContainerModelObj = GuardianOneTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
