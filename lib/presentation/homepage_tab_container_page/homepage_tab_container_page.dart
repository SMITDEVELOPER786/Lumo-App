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
  State<HomepageTabContainerPage> createState() => _HomepageTabContainerPageState();
}

class _HomepageTabContainerPageState extends State<HomepageTabContainerPage> {
  HomepageTabContainerController controller =
      Get.put(HomepageTabContainerController(HomepageTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
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
                            HomepagePage(),
                            HomepagePage(),
                            HomepagePage(),
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
            SizedBox(height: 2.v),
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
  Widget _buildJoinTheStreaming() {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 100.v,
        child: Obx(
          () => ListView.separated(
            padding: EdgeInsets.only(left: 20.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 12.h,
              );
            },
            itemCount: controller.homepageTabContainerModelObj.value
                .jointhestreamingItemList.value.length,
            itemBuilder: (context, index) {
              JointhestreamingItemModel model = controller
                  .homepageTabContainerModelObj
                  .value
                  .jointhestreamingItemList
                  .value[index];
              return JointhestreamingItemWidget(
                model,
              );
            },
          ),
        ),
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
          Container(
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
        ],
      ),
    );
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
            begin: Alignment(1.03, 1.11),
            end: Alignment(0.07, -0.41),
            colors: [
              appTheme.green70002,
              theme.colorScheme.primary,
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
