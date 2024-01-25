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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 14.v),
              Container(
                height: 19.v,
                width: 203.h,
                margin: EdgeInsets.only(left: 20.h),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.green70002,
                  labelStyle: TextStyle(
                    fontSize: 11.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                  unselectedLabelColor: appTheme.gray60008,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  indicatorColor: appTheme.green70002,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_special_message".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "msg_official_message".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 635.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    MessagesPage(),
                    MessagesPage(),
                  ],
                ),
              ),
            ],
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
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "msg_search_users_messages".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
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
