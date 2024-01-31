import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/notifications_screen/notifications_screen.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_floating_button.dart';

import '../homepage_three_page/widgets/homepagethree_item_widget.dart';
import 'controller/homepage_three_controller.dart';
import 'models/homepage_three_model.dart';
import 'models/homepagethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomepageThreePage extends StatelessWidget {
  HomepageThreePage({Key? key})
      : super(
          key: key,
        );

  HomepageThreeController controller =
      Get.put(HomepageThreeController(HomepageThreeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: _buildAppBar(),
           bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
        //  floatingActionButton: CustomFloatingButton(
        //      onTap: (){
        //       //     controllerF.setBottomIndex(0,true);
        //       //  Get.to(()=>ExploreTabContainerScreen());
        //     },
        //   height: 48,
        //   width: 48,
        //   child: CustomImageView(
        //     imagePath: ImageConstant.imgUploadGray5001,
        //     height: 24.0.v,
        //     width: 24.0.h,
        //   ),
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.fillLime,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               
                _buildAll(),
                SizedBox(height: 16.v),
                Column(
                  
                  children: [
                    _buildFrame4(),
                    _buildFrame5(),
                    SizedBox(height: 40,),
                     _buildFrame4(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80.h,
            margin: EdgeInsets.only(bottom: 5.v),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
            gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 163, 226, 15).withOpacity(0.8),  // Start with yellow at the top
      Color.fromARGB(255, 43, 112, 45),   // Transition to green at the bottom
    ],
     stops: [0.2, 1.0],
  ),
              corners: Corners(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 28.h,
                  vertical: 6.v,
                ),
                child: Text(
                  "lbl_all".tr,
                  style: CustomTextStyles.bodyMediumGray70008,
                ),
              ),
            ),
          ),
          Container(
            width: 100.h,
            margin: EdgeInsets.only(
              left: 7.h,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 11.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgBangladesh,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 2.h,
                    top: 2.v,
                  ),
                  child: Text(
                    "lbl_bangladesh".tr,
                    style: CustomTextStyles.labelMediumGray80001SemiBold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 80.h,
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                bottom: 5.v,
              ),
              child: _buildFrame(
                countryImage: ImageConstant.imgIndia,
                countryName: "lbl_india".tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              bottom: 5.v,
            ),
            child: _buildFrame(
              countryImage: ImageConstant.imgUsa,
              countryName: "lbl_usa".tr,
            ),
          ),
          Container(
            width: 100.h,
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                bottom: 5.v,
              ),
              child: _buildFrame(
                countryImage: ImageConstant.imgNigeriaCircular,
                countryName: "lbl_nigeria".tr,
              ),
            ),
          ),
          Container(
            width: 70.h,
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineGray30008.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_2".tr,
                  style: CustomTextStyles.bodyMediumGray70008,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 69.h,
            margin: EdgeInsets.only(left: 7.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineGray30008.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_1".tr,
                  style: CustomTextStyles.bodyMediumGray70008,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStar,
                  height: 17.adaptSize,
                  width: 17.adaptSize,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    bottom: 2.v,
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
  Widget _buildNew() {
    return CustomElevatedButton(
      height: 20.v,
      width: 66.h,
      text: "lbl_new".tr,
      margin: EdgeInsets.only(bottom: 4.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Section Widget
  Widget _buildVeteran() {
    return CustomElevatedButton(
      height: 20.v,
      width: 73.h,
      text: "lbl_veteran".tr,
      margin: EdgeInsets.only(bottom: 4.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGrayF,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 205.v,
            width: 170.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle11,
                  height: 205.v,
                  width: 170.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 153.h,
                        margin: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildNew(),
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration:
                                  IconButtonStyleHelper.gradientGreenToPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUpload,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 133.v),
                      _buildPrice(
                        price: "lbl_naomi_as".tr,
                        illinoisTexas: "lbl_illinois_texas".tr,
                        thirtyTwo: "lbl_23".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 205.v,
            width: 170.h,
            margin: EdgeInsets.only(left: 13.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle11205x170,
                  height: 205.v,
                  width: 170.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(right: 1.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 154.h,
                          margin: EdgeInsets.symmetric(horizontal: 7.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _buildVeteran(),
                              CustomIconButton(
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                decoration: IconButtonStyleHelper
                                    .gradientGreenToPrimary,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgUpload,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 133.v),
                        _buildPrice(
                          price: "lbl_xxx".tr,
                          illinoisTexas: "lbl_illinois_texas".tr,
                          thirtyTwo: "lbl_32".tr,
                        ),
                      ],
                    ),
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
  Widget _buildNew1() {
    return CustomElevatedButton(
      height: 20.v,
      width: 66.h,
      text: "lbl_new".tr,
      margin: EdgeInsets.only(bottom: 4.v),
      leftIcon: Container(
        margin: EdgeInsets.only(right: 2.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgClose16x16,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: theme.textTheme.labelMedium!,
    );
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Align(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 205.v,
            width: 170.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle111,
                  height: 205.v,
                  width: 170.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 153.h,
                        margin: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _buildNew1(),
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration:
                                  IconButtonStyleHelper.gradientGreenToPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUpload,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 133.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillGrayC.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "lbl_sexy_mercy".tr,
                              style: CustomTextStyles.labelLargeSemiBold,
                            ),
                            SizedBox(height: 2.v),
                            SizedBox(
                              width: 110.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMappin,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                  Text(
                                    "lbl_illinois_texas".tr,
                                    style: CustomTextStyles
                                        .bodySmallInterWhiteA70010_1,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgConfetti,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                  Text(
                                    "lbl_28".tr,
                                    style: CustomTextStyles
                                        .bodySmallInterWhiteA70010_1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 205.v,
            width: 170.h,
            margin: EdgeInsets.only(left: 13.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle112,
                  height: 205.v,
                  width: 170.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 153.h,
                        margin: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 67.h,
                              margin: EdgeInsets.only(
                                top: 1.v,
                                bottom: 4.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 9.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillGrayF.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgCollision,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                  ),
                                  Text(
                                    "lbl_house".tr,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ],
                              ),
                            ),
                            CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration:
                                  IconButtonStyleHelper.gradientGreenToPrimary,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUpload,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 133.v),
                      _buildPrice(
                        price: "lbl_sam".tr,
                        illinoisTexas: "lbl_illinois_texas".tr,
                        thirtyTwo: "lbl_23".tr,
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
  Widget _buildHomepageThree() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 118.v),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 401.v,
              crossAxisCount: 1,
              mainAxisSpacing: 1.h,
              crossAxisSpacing: 1.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller
                .homepageThreeModelObj.value.homepagethreeItemList.value.length,
            itemBuilder: (context, index) {
              HomepagethreeItemModel model = controller.homepageThreeModelObj
                  .value.homepagethreeItemList.value[index];
              return HomepagethreeItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String countryImage,
    required String countryName,
  }) {
    return Container(
      width: 63.h,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: countryImage,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              countryName,
              style: CustomTextStyles.labelMediumGray80001SemiBold.copyWith(
                color: appTheme.gray80001,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildPrice({
    required String price,
    required String illinoisTexas,
    required String thirtyTwo,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 3.v,
      ),
      decoration: AppDecoration.fillGrayC.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            price,
            style: CustomTextStyles.labelLargeSemiBold.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            width: 111.h,
            margin: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMappin,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                Text(
                  illinoisTexas,
                  style: CustomTextStyles.bodySmallInterWhiteA70010_1.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgConfetti,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                ),
                Text(
                  thirtyTwo,
                  style: CustomTextStyles.bodySmallInterWhiteA70010_1.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
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
                  AppbarSubtitleOne(
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
            // SizedBox(height: 2.v),
            // AppbarTitleImage(
            //   imagePath: ImageConstant.imgGroup1025Gray30006,
            // ),
          ],
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){
            Get.lazyPut(() => NotificationsScreen());
            Get.to(() => NotificationsScreen());

          },
          child: Container(
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
        ),
      ],
    );
  }
     Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type),);
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
        case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
      case BottomBarEnum.Chat:
      return AppRoutes.messagesTabContainerScreen;
      default:
        return "/";
    }
  }

}
