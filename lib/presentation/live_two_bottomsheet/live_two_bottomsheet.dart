import 'controller/live_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class LiveTwoBottomsheet extends StatelessWidget {
  LiveTwoBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LiveTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 149.h,
              child: Divider(
                color: appTheme.gray80001,
              ),
            ),
          ),
          SizedBox(height: 37.v),
          Text(
            "lbl_basic_tools".tr,
            style: CustomTextStyles.labelLargeGray80001SemiBold13,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 57.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillLightGreen,
                      alignment: Alignment.centerRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMusicGreen600,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_sound".tr,
                        style: CustomTextStyles.labelMediumMontserratGray60009,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 35,
                ),
                Column(
                  children: [
                    CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(10.h),
                      decoration: IconButtonStyleHelper.fillLightGreen,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSend,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_share".tr,
                      style: CustomTextStyles.labelMediumMontserratGray60009,
                    ),
                  ],
                ),
                Spacer(
                  flex: 33,
                ),
                _buildFrame(
                  report: "lbl_effects".tr,
                ),
                Spacer(
                  flex: 30,
                ),
                _buildFrame(
                  report: "lbl_report".tr,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Divider(
            color: appTheme.gray30004,
          ),
          SizedBox(height: 18.v),
          Text(
            "lbl_playstyle".tr,
            style: CustomTextStyles.labelLargeGray80001SemiBold13,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 33.h,
            ),
            child: Row(
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGift,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_rewards".tr,
                      style: CustomTextStyles.labelMediumMontserratGray80001,
                    ),
                  ],
                ),
                Spacer(
                  flex: 25,
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgApplicationShield,
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_guardian".tr,
                      style: CustomTextStyles.labelMediumMontserratGray80001,
                    ),
                  ],
                ),
                Spacer(
                  flex: 32,
                ),
                _buildFrame1(
                  image: ImageConstant.imgStall,
                  text: "lbl_store".tr,
                ),
                Spacer(
                  flex: 41,
                ),
                _buildFrame1(
                  image: ImageConstant.imgMembershipCard,
                  text: "lbl_vip".tr,
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({required String report}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 2.h),
          child: CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.fillLightGreen,
            child: CustomImageView(
              imagePath: ImageConstant.imgVideoCamera,
            ),
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          report,
          style: CustomTextStyles.labelMediumMontserratGray60009.copyWith(
            color: appTheme.gray60009,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1({
    required String image,
    required String text,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image,
          height: 32.adaptSize,
          width: 32.adaptSize,
        ),
        SizedBox(height: 4.v),
        Text(
          text,
          style: CustomTextStyles.labelMediumMontserratGray80001.copyWith(
            color: appTheme.gray80001,
          ),
        ),
      ],
    );
  }
}
