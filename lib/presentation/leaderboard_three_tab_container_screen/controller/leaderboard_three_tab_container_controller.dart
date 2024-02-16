import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/leaderboard_three_tab_container_screen/models/leaderboard_three_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LeaderboardThreeTabContainerScreen.
///
/// This class manages the state of the LeaderboardThreeTabContainerScreen, including the
/// current leaderboardThreeTabContainerModelObj
class LeaderboardThreeTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<LeaderboardThreeTabContainerModel> leaderboardThreeTabContainerModelObj =
      LeaderboardThreeTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
