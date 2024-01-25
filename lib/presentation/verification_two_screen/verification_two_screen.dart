import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/sign_in_screen.dart';

import 'controller/verification_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VerificationTwoScreen extends GetWidget<VerificationTwoController> {
  const VerificationTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 38.h,
            top: 141.v,
            right: 38.h,
          ),
          child: Column(
            children: [
              _buildTen(),
              SizedBox(height: 21.v),
              Text(
                "msg_password_reset_successful".tr,
                style: CustomTextStyles.headlineSmallGray80001,
              ),
              SizedBox(height: 13.v),
              Text(
                "msg_your_password_has".tr,
                style: CustomTextStyles.labelLargeGray60001,
              ),
              SizedBox(height: 34.v),
              CustomElevatedButton(
                onPressed: (){
                      Get.lazyPut(()=>SignInScreen());
                Get.toNamed(AppRoutes.signInScreen);
                },
                text: "lbl_login".tr,
                margin: EdgeInsets.only(
                  left: 25.h,
                  right: 24.h,
                ),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGreenToPrimaryTL253Decoration,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTen() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 86.h,
        vertical: 52.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup12,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgTickCircle,
            height: 142.adaptSize,
            width: 142.adaptSize,
          ),
        ],
      ),
    );
  }
}
