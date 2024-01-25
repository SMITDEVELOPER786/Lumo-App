import '../homepage_page/widgets/userprofile1_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_checkbox_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class HomepagePage extends StatelessWidget {
  HomepagePage({Key? key})
      : super(
          key: key,
        );

  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 38.v),
              child: Column(
                children: [
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfile(),
                        SizedBox(height: 13.v),
                        _buildFrame3(),
                        SizedBox(height: 13.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSpaFlower,
                          height: 96.adaptSize,
                          width: 96.adaptSize,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 206.v,
          crossAxisCount: 2,
          mainAxisSpacing: 13.h,
          crossAxisSpacing: 13.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount:
            controller.homepageModelObj.value.userprofile1ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile1ItemModel model = controller
              .homepageModelObj.value.userprofile1ItemList.value[index];
          return Userprofile1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 205.v,
          width: 170.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 205.v,
                  width: 170.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle113,
                        height: 205.v,
                        width: 170.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 8.v,
                            right: 8.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 154.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 67.h,
                                      margin: EdgeInsets.only(bottom: 5.v),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 9.h,
                                        vertical: 1.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGrayF.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgCollision,
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
                                      decoration: IconButtonStyleHelper
                                          .gradientGreenToPrimary,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgUpload,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 102.v),
                              CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration: IconButtonStyleHelper
                                    .gradientGreenToPrimaryTL18,
                                alignment: Alignment.centerRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 176.v),
                child: _buildFrame(
                  locationText: "lbl_australia".tr,
                  ageText: "lbl_29".tr,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 205.v,
          width: 170.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 205.v,
                  width: 170.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle114,
                        height: 205.v,
                        width: 170.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 8.v,
                            right: 8.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 153.h,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4.v),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 13.h,
                                        vertical: 2.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder10,
                                      ),
                                      child: Obx(
                                        () => CustomCheckboxButton(
                                          text: "lbl_new".tr,
                                          value: controller.newVar.value,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 1.v),
                                          textStyle:
                                              theme.textTheme.labelMedium,
                                          onChange: (value) {
                                            controller.newVar.value = value;
                                          },
                                        ),
                                      ),
                                    ),
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
                              SizedBox(height: 102.v),
                              CustomIconButton(
                                height: 36.adaptSize,
                                width: 36.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration: IconButtonStyleHelper
                                    .gradientGreenToPrimaryTL18,
                                alignment: Alignment.centerRight,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgCall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 176.v),
                child: _buildFrame(
                  locationText: "lbl_australia".tr,
                  ageText: "lbl_29".tr,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String locationText,
    required String ageText,
  }) {
    return Container(
      width: 170.h,
      padding: EdgeInsets.symmetric(
        horizontal: 34.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGray8004c.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLinkedin,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Text(
            locationText,
            style: CustomTextStyles.bodySmallInterWhiteA70010_1.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTelevision,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(bottom: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: Text(
              ageText,
              style: CustomTextStyles.bodySmallInterWhiteA70010_1.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
