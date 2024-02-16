import 'package:muhammad_zubair_s_application4/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';

import '../homepage_two_screen/widgets/homepagetwo_item_widget.dart';
import 'controller/homepage_two_controller.dart';
import 'models/homepagetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomepageTwoScreen extends StatefulWidget {
  const HomepageTwoScreen({Key? key}) : super(key: key);

  @override
  _HomepageTwoScreenState createState() => _HomepageTwoScreenState();
}

class _HomepageTwoScreenState extends State<HomepageTwoScreen> {
  final HomepageTwoController controller = Get.put(HomepageTwoController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          height: 662.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 6.v),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngegg31,
                      height: 138.v,
                      width: 393.h,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildHomepageTwo(),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup62,
                height: 400.v,
                width: 393.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 5.v),
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
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 11.h,
              ),
              child: Row(
                children: [
                  AppbarSubtitleTwo(
                    onTap: (){
                      Get.lazyPut(() => HomepageThreePage());
                      Get.to(()=>HomepageThreePage());
                    },
                    text: "lbl_universe".tr,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  AppbarSubtitleTwo(
                    onTap: (){
                         Get.lazyPut(() => HomepageTabContainerPage());
                      Get.to(()=>HomepageTabContainerPage());
                    },
                    text: "lbl_popular".tr,
                    margin: EdgeInsets.only(
                      left: 34.h,
                      top: 1.v,
                    ),
                  ),
                  AppbarSubtitleTwo(
                      onTap: (){
                         Get.lazyPut(() => HomepageOnePage());
                      Get.to(()=>HomepageOnePage());
                    },
                    text: "lbl_events".tr,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      bottom: 1.v,
                    ),
                  ),
                  AppbarSubtitleOne(
                    text: "lbl_games".tr,
                    margin: EdgeInsets.only(
                      left: 28.h,
                      bottom: 1.v,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 2.v),
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup1025Gray30006,
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.fromLTRB(20.h, 21.v, 20.h, 18.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBellsimple,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 5.adaptSize,
                  width: 5.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    right: 2.h,
                    bottom: 11.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.redA700,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHomepageTwo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 12.v,
            );
          },
          itemCount: controller
              .homepageTwoModelObj.value.homepagetwoItemList.value.length,
          itemBuilder: (context, index) {
            HomepagetwoItemModel model = controller
                .homepageTwoModelObj.value.homepagetwoItemList.value[index];
            return HomepagetwoItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type),);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
        case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
      case BottomBarEnum.Chat:
      return AppRoutes.messagesTabContainerScreen;
        case BottomBarEnum.Connect:
      return AppRoutes.profilePage;
      // case Bo
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
