import 'package:muhammad_zubair_s_application4/presentation/leaderboard_two_screen/leaderboard_two_screen.dart';

import '../leaderboard_three_page/leaderboard_three_page.dart';
import '../leaderboard_two_screen/leaderboard_one_screen.dart';
import 'controller/leaderboard_three_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class LeaderboardThreeTabContainerScreen extends StatefulWidget {
  const LeaderboardThreeTabContainerScreen({Key? key}) : super(key: key);

  @override
  State<LeaderboardThreeTabContainerScreen> createState() =>
      _LeaderboardThreeTabContainerScreenState();
}

class _LeaderboardThreeTabContainerScreenState
    extends State<LeaderboardThreeTabContainerScreen> {
  var controller = Get.put(LeaderboardThreeTabContainerController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
  
      child: Scaffold(
        backgroundColor: appTheme.purple400,

        body: Container(
          decoration: BoxDecoration(
            image:DecorationImage(image: AssetImage( ImageConstant.imgRectangle852x392,
          
            ),
            fit: BoxFit.cover
            )
            // image: DecorationImage(image: AssetImage())
          ),
            
          // height: SizeUtils.height,
          // width: double.maxFinite,
          child: SingleChildScrollView(
              child: Column(
                children: [
                
                  Container(
                    
                  
                      height: 1007.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            LeaderboardOneScreen(),
                            LeaderboardTwoScreen(),

                            LeaderboardThreeScreen(),
    
                            
                            ])),
                ],
              ))),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyEight() {
    return Container(
        width: 347.h,
        margin: EdgeInsets.only(left: 20.h, right: 26.h),
        decoration: AppDecoration.gradientOrangeToOrange,
        child: Column(children: [
          CustomAppBar(
              height: 33.v,
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgCheckmarkWhiteA70024x24,
                  margin: EdgeInsets.only(left: 20.h, top: 7.v, bottom: 2.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_leaderboard".tr),
              actions: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26.h),
                    child: Column(children: [
                      AppbarTrailingImage(
                          imagePath: ImageConstant.imgRectangle15x15,
                          margin: EdgeInsets.only(left: 18.h, right: 19.h)),
                      SizedBox(height: 5.v),
                      AppbarSubtitleThree(text: "lbl_last_month".tr)
                    ]))
              ]),
          SizedBox(height: 21.v),
          Container(
              height: 34.v,
              width: 328.h,
              child: TabBar(
                  controller: controller.tabviewController,
                  labelPadding: EdgeInsets.zero,
                  labelColor: appTheme.blueGray5002,
                  labelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                  unselectedLabelColor: appTheme.blueGray5002,
                  unselectedLabelStyle: TextStyle(
                      fontSize: 14.fSize,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400),
                  indicator: BoxDecoration(
                      color: appTheme.gray90006,
                      borderRadius: BorderRadius.circular(17.h)),
                  tabs: [
                    Tab(child: Text("lbl_receiver".tr)),
                    Tab(child: Text("lbl_gifters".tr)),
                    Tab(child: Text("lbl_family".tr))
                  ]))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
