import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/gift_one_tab_container_screen/models/gift_one_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the GiftOneTabContainerScreen.
///
/// This class manages the state of the GiftOneTabContainerScreen, including the
/// current giftOneTabContainerModelObj
class GiftOneTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<GiftOneTabContainerModel> giftOneTabContainerModelObj =
      GiftOneTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 7));
}
