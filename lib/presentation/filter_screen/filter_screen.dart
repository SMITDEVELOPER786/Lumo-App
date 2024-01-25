import 'controller/filter_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class FilterScreen extends GetWidget<FilterController> {
  const FilterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black900.withOpacity(0.3),
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(top: 56.v),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.3),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup751,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 87.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            "lbl_live".tr,
                            style: CustomTextStyles.labelLargeGreen70002,
                          ),
                          SizedBox(height: 2.v),
                          Container(
                            height: 2.v,
                            width: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                1.h,
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
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "lbl_audio_live".tr,
                          style: CustomTextStyles.labelLarge13,
                        ),
                      ),
                      Spacer(
                        flex: 50,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          "lbl_multi_live2".tr,
                          style: CustomTextStyles.labelLarge13,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                _buildSeventeen(),
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
      actions: [
        Container(
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 21.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSeventeen() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGrayB,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgClock,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.only(top: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Text(
                  "lbl_filter".tr,
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
              ),
            ],
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFacePowder,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_make_up".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgAroma,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "lbl_beauty".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngwing9,
                      height: 48.v,
                      width: 36.h,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "lbl_face_shaping".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
