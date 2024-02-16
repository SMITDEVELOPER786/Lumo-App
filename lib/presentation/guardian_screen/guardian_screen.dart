import 'controller/guardian_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class GuardianScreen extends GetWidget<GuardianController> {
  const GuardianScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 26.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      SizedBox(height: 19.v),
                      Padding(
                          padding: EdgeInsets.only(right: 67.h),
                          child: Row(children: [
                            SizedBox(
                                height: 110.v,
                                width: 139.h,
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: appTheme.amber10001,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                              child: Container(
                                                  height: 110.v,
                                                  width: 138.h,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 42.h,
                                                      vertical: 11.v),
                                                  decoration: AppDecoration
                                                      .fillAmber
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPngegg51,
                                                            height: 14.v,
                                                            width: 20.h,
                                                            alignment: Alignment
                                                                .bottomLeft),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: Text(
                                                                "lbl_10_500".tr,
                                                                style: CustomTextStyles
                                                                    .labelMediumGray80001SemiBold_2))
                                                      ])))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: appTheme.orange5001,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL5),
                                              child: Container(
                                                  height: 72.v,
                                                  width: 139.h,
                                                  decoration: AppDecoration
                                                      .fillOrange5001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .customBorderTL5),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            height: 64.v,
                                                            width: 138.h,
                                                            alignment: Alignment
                                                                .topCenter),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgPngkey1,
                                                            height: 55.v,
                                                            width: 52.h,
                                                            alignment: Alignment
                                                                .center)
                                                      ]))))
                                    ])),
                            Container(
                                margin: EdgeInsets.only(left: 8.h),
                                decoration: AppDecoration.fillAmber.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                          height: 72.v,
                                          width: 138.h,
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle34624938,
                                                    height: 72.v,
                                                    width: 138.h,
                                                    radius:
                                                        BorderRadius.circular(
                                                            5.h),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    height: 64.v,
                                                    width: 138.h,
                                                    alignment:
                                                        Alignment.topCenter),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPngwing8,
                                                    height: 59.v,
                                                    width: 63.h,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    margin: EdgeInsets.only(
                                                        bottom: 4.v))
                                              ])),
                                      SizedBox(height: 10.v),
                                      SizedBox(
                                          height: 14.v,
                                          width: 51.h,
                                          child: Stack(
                                              alignment: Alignment.centerRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgPngegg51,
                                                    height: 14.v,
                                                    width: 20.h,
                                                    alignment:
                                                        Alignment.centerLeft),
                                                Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text("lbl_30500".tr,
                                                        style: CustomTextStyles
                                                            .labelMediumGray80001SemiBold_2))
                                              ])),
                                      SizedBox(height: 13.v)
                                    ]))
                          ])),
                      SizedBox(height: 5.v)
                    ])));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 44.h,
        leading: 
        Icon(Icons.arrow_back_ios),     
        centerTitle: true,
        title: Text("lbl_guardian".tr));
  }

  /// Navigates to the previous screen.
  onTapOpenGuardian() {
    Get.back();
  }
}
