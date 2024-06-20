import 'package:muhammad_zubair_s_application4/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/leaderboard_three_tab_container_screen/controller/leaderboard_three_tab_container_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/leaderboard_three_tab_container_screen/leaderboard_three_tab_container_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/search_screen/search_screen.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';
import '../../widgets/custom_floating_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../homepage_page/home_page_multi.dart';
import '../homepage_page/home_page_party.dart';
import '../homepage_tab_container_page/widgets/jointhestreaming_item_widget.dart';
import 'controller/homepage_tab_container_controller.dart';
import 'models/homepage_tab_container_model.dart';
import 'models/jointhestreaming_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_page/homepage_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class HomepageTabContainerPage extends StatefulWidget {
  HomepageTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  State<HomepageTabContainerPage> createState() =>
      _HomepageTabContainerPageState();
}

class _HomepageTabContainerPageState extends State<HomepageTabContainerPage> {
  HomepageTabContainerController controller =
      Get.put(HomepageTabContainerController(HomepageTabContainerModel().obs));

  var controller1 = Get.find<HomepageTabContainerController>();

  var bannerData = [];

  @override
  void initState() {
    super.initState();
    controller1.fetchBannerData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              children: [
                _buildJoinTheStreaming(),
                SizedBox(height: 20.v),
                _buildFrame(),
                SizedBox(height: 5.v),
                SizedBox(
                  height: 495.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.h,
                            vertical: 15.v,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                ImageConstant.imgGroup62,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: _buildTabview(),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 38.v),
                        height: 457.v,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            HomepagePartPage(),
                            HomepagePage(),
                            HomepageMultiPage(),
                            HomepagePage(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 17.h,
              ),
              child: Row(
                children: [
                  AppbarSubtitleTwo(
                    onTap: () {
                      Get.lazyPut(() => HomepageThreePage());
                      Get.to(() => HomepageThreePage());
                    },
                    text: "lbl_universe".tr,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  AppbarSubtitleOne(
                    text: "lbl_popular".tr,
                    margin: EdgeInsets.only(
                      left: 32.h,
                      top: 1.v,
                    ),
                  ),
                  AppbarSubtitleTwo(
                    onTap: () {
                      Get.lazyPut(() => HomepageOnePage());
                      Get.to(() => HomepageOnePage());
                    },
                    text: "lbl_events".tr,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      bottom: 1.v,
                    ),
                  ),
                  AppbarSubtitleTwo(
                    text: "lbl_games".tr,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      bottom: 1.v,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 2.v),
            // AppbarTitleImage(
            //   imagePath: ImageConstant.imgGroup1025Gray30006,
            // ),
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
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
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
  Widget _buildJoinTheStreaming() {
    return Align(
  alignment: Alignment.centerRight,
  child: SizedBox(
    height: 150.v,
    child: Obx(() {
      if (controller.bannerData.isEmpty) {
        return Center(child: Text("No banner data available"));
      }
      return CarouselSlider.builder(
        options: CarouselOptions(
          height: 150.v,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          autoPlay: true,
        ),
        itemCount: controller.bannerData.length,
        itemBuilder: (context, index, realIndex) {
          var model = controller.bannerData[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: JointhestreamingItemWidget(data: model),
          );
        },
      );
    }),
  ),
);
  }
  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            onPressed: () {
              Get.lazyPut(() => SearchScreen());

              Get.to(() => SearchScreen());
            },
            height: 48.v,
            width: 172.h,
            text: "lbl_search_friends".tr,
            rightIcon: Container(
              margin: EdgeInsets.only(left: 24.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgShootingStars,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientOrangeToLimeEaDecoration,
            buttonTextStyle: CustomTextStyles.bodySmallInterWhiteA70012,
          ),
          GestureDetector(
            onTap: () {
              Get.lazyPut(() => LeaderboardThreeTabContainerScreen());
              Get.to(() => LeaderboardThreeTabContainerScreen());
            },
            child: Container(
              width: 172.h,
              margin: EdgeInsets.only(left: 8.h),
              padding: EdgeInsets.symmetric(vertical: 4.v),
              decoration: AppDecoration.gradientGreenAToGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40.v,
                    width: 83.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 40.v,
                            width: 32.h,
                            decoration: BoxDecoration(
                              color: appTheme.green800,
                              borderRadius: BorderRadius.circular(
                                20.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "lbl_ranking_lists".tr,
                            style: CustomTextStyles.bodySmallInterWhiteA70012,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 35.v,
                    width: 48.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      right: 12.h,
                    ),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShootingStars,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPrizeMoney,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          alignment: Alignment.bottomRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(
          getCurrentRoute(type),
        );
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
      case BottomBarEnum.Stream:
        return AppRoutes.streamScreen;
      case BottomBarEnum.Chat:
        return AppRoutes.messagesTabContainerScreen;
      case BottomBarEnum.Connect:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 23.v,
      width: 350.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelColor: appTheme.gray80001,
        unselectedLabelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
          gradient: LinearGradient(
            begin: Alignment(1.03, 1),
            end: Alignment(0.07, 0),
            colors: [
              Color.fromARGB(255, 163, 226, 15)
                  .withOpacity(0.8), // Start with yellow at the top
              Color.fromARGB(255, 43, 112, 45),
            ],
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_party".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_pk".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_multi_live".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_new".tr,
            ),
          ),
        ],
      ),
    );
  }
}
