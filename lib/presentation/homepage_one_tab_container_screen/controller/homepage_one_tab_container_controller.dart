import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_one_tab_container_screen/models/homepage_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomepageOneTabContainerScreen.
///
/// This class manages the state of the HomepageOneTabContainerScreen, including the
/// current homepageOneTabContainerModelObj
class HomepageOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<HomepageOneTabContainerModel> homepageOneTabContainerModelObj =
      HomepageOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));
}
