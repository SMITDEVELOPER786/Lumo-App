import 'controller/homepage_one_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomepageOneTabContainerScreen
    extends GetWidget<HomepageOneTabContainerController> {
  const HomepageOneTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.v),
              Container(
                height: 22.v,
                width: 304.h,
                margin: EdgeInsets.only(left: 20.h),
                child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.green70002,
                  unselectedLabelColor: appTheme.gray80003,
                  tabs: [
                    Tab(
                      child: Text(
                        "lbl_universe".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_popular".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_events".tr,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "lbl_games".tr,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 678.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    HomepageThreePage(),
                    HomepageThreePage(),
                    HomepageOnePage(),
                    HomepageOnePage(),
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
