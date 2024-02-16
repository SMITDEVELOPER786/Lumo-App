import 'controller/apply_for_hosting_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class ApplyForHostingScreen extends GetWidget<ApplyForHostingController> {
  const ApplyForHostingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 39.v),
                    child: _buildScrollView()))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50,
        leadingWidth: 44.h,
        leading: 
        GestureDetector(
          onTap: (){
            onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios)),
        // AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text( "lbl_apply_hosting".tr));
  }

  /// Section Widget
  Widget _buildScrollView() {
    return Container(
        height: 292.v,
        width: 353.h,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 5.v),
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 45.h, vertical: 36.v),
                  decoration: AppDecoration.fillLightGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 17.v),
                    Text("msg_host_identity_authentication".tr,
                        style: CustomTextStyles.titleSmallGray80001SemiBold),
                    SizedBox(height: 25.v),
                    CustomElevatedButton(
                      decoration: BoxDecoration(
                        color:appTheme.lightGreen10003,
                        borderRadius: BorderRadius.circular(30)
                      ),
                        height: 52.v,
                        text: "lbl_invitation_code".tr,
                        buttonStyle: CustomButtonStyles.fillLightGreen,
                        buttonTextStyle:
                           TextStyle(   color: appTheme.green70002,
        fontSize: 14.fSize,)),
                    SizedBox(height: 24.v),
                    CustomElevatedButton(
                        text: "lbl_proceed".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenToPrimaryTL25Decoration)
                  ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse479,
              height: 56.adaptSize,
              width: 56.adaptSize,
              radius: BorderRadius.circular(28.h),
              alignment: Alignment.topCenter)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
