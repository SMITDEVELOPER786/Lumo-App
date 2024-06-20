import 'package:muhammad_zubair_s_application4/presentation/messages_two_page/messages_two_page.dart';

import '../homepage_three_page/homepage_three_page.dart';
import 'controller/messages_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/messages_page/messages_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title_searchview.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class MessagesTabContainerScreen
    extends GetWidget<MessagesTabContainerController> {
  const MessagesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 14.v),
                Container(
                  height: 25.v,
                  width: 320.h,
                  margin: EdgeInsets.only(left: 20.h),
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    labelColor: appTheme.green70002,
                    labelStyle: TextStyle(
                      fontSize: 17.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelColor: appTheme.gray60008,
                    unselectedLabelStyle: TextStyle(
                      fontSize: 17.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    indicatorColor: appTheme.green70002,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_special_message".tr+"  ",
                        ),
                      ),
                      Tab(
                        child: Text(
                          "msg_official_message".tr+"   ",
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: SizedBox(
                    height: 635.v,
                    child: TabBarView(
                      controller: controller.tabviewController,
                      children: [
                        MessagesPage(),
                        MessagesTwoPage(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50,
      centerTitle: true,
      title: AppbarTitleSearchview(
        margin: EdgeInsets.all(10),
        hintText: "msg_search_users_messages".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageThreePage;
 case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
      case BottomBarEnum.Chat:
        return AppRoutes.messagesTabContainerScreen;
           case BottomBarEnum.Connect:
      return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageTabContainerPage:
        return HomepageTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
