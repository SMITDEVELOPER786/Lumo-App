import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/messages_tab_container_screen/models/messages_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the MessagesTabContainerScreen.
///
/// This class manages the state of the MessagesTabContainerScreen, including the
/// current messagesTabContainerModelObj
class MessagesTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<MessagesTabContainerModel> messagesTabContainerModelObj =
      MessagesTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
