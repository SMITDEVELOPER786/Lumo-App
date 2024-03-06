import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.v),
                child: Column(children: [
                  _buildGeneral(),
                  SizedBox(height: 16.v),
                  _buildAppearance(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(

        height: 50.v,
        leadingWidth: 44.h,
        leading: 
        GestureDetector(
          onTap: (){
                onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios)),
        // AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_settings".tr));
  }

  /// Section Widget
  Widget _buildGeneral() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
        decoration: AppDecoration.fillLightgreen5006
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_general".tr,
                  style: CustomTextStyles.titleLargeGray80003),
              SizedBox(height: 18.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_privacy".tr, style: theme.textTheme.bodyMedium),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 16.adaptSize,
                    width: 16.adaptSize)
              ]),
              SizedBox(height: 14.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_blocked_list".tr, style: theme.textTheme.bodyMedium),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 16.adaptSize,
                    width: 16.adaptSize)
              ]),

              SizedBox(height: 16.v),
              _buildDeviceManager(text: "msg_account_management".tr),
              SizedBox(height: 16.v),
              _buildDeviceManager(text: "lbl_device_manager".tr),
              SizedBox(height: 15.v),
              _buildDeviceManager(text: "lbl_notifications".tr),
              SizedBox(height: 15.v),
              _buildDeviceManager(text: "lbl_about_us".tr),
              SizedBox(height: 15.v),
              _buildDeviceManager(text: "lbl_clean_cache".tr),
                  SizedBox(height: 16.v),
              _buildDeviceManager(text: "My Vip"),
                  SizedBox(height: 16.v),
              _buildDeviceManager(text: "Vip Privilege"),
            ]));
  }

  /// Section Widget
  Widget _buildAppearance() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v),
        decoration: AppDecoration.fillLightgreen5006
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_appearance".tr,
                  style: CustomTextStyles.titleLargeGray80003),
              SizedBox(height: 17.v),
              _buildDeviceManager(text: "lbl_widgets".tr),
              SizedBox(height: 16.v),
              _buildDeviceManager(text: "lbl_video_quality".tr),
              SizedBox(height: 15.v),
              _buildDeviceManager(text: "lbl_video_codec".tr),
              SizedBox(height: 16.v),
              _buildDeviceManager(text: "msg_material_library".tr)
            ]));
  }

  /// Common widget
  Widget _buildDeviceManager({required String text}) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(text,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray70005))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 3.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
