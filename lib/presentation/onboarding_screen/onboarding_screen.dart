import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_one_screen/sign_up_one_screen.dart';

import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 618.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1,
                        height: 618.v,
                        width: 393.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 560.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildThirteen(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 44.v,
        ),
        decoration: AppDecoration.fillLime.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL40,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_unleash_limitless".tr,
              style: CustomTextStyles.titleLargePoppinsBluegray90001,
            ),
            SizedBox(height: 9.v),
            Container(
              width: 310.h,
              margin: EdgeInsets.only(right: 42.h),
              child: Text(
                "msg_discover_a_world".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.labelLargeGray50015.copyWith(
                  height: 1.31,
                ),
              ),
            ),
            SizedBox(height: 22.v),
            CustomElevatedButton(
              onPressed: (){
                Get.lazyPut(()=>SignUpOneScreen());
                Get.toNamed(AppRoutes.signUpOneScreen);
                // Get.toNamed(page)
              },
              text: "lbl_get_started".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientGreenToPrimaryDecoration,
              buttonTextStyle: CustomTextStyles.titleSmall_1,
            ),
            SizedBox(height: 74.v),
          ],
        ),
      ),
    );
  }
}
