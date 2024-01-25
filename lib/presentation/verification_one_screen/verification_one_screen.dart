import 'package:muhammad_zubair_s_application4/presentation/verification_screen/verification_screen.dart';

import 'controller/verification_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VerificationOneScreen extends GetWidget<VerificationOneController> {
  const VerificationOneScreen({Key? key})
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
            left: 16.h,
            top: 69.v,
            right: 16.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgForgot1,
                height: 150.v,
                width: 215.h,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_verification_code".tr,
                style: CustomTextStyles.headlineSmallGray80006,
              ),
              SizedBox(height: 11.v),
              Container(
                width: 316.h,
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 17.h,
                ),
                child: Text(
                  "msg_check_your_email".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray50002,
                ),
              ),
              SizedBox(height: 44.v),
              CustomElevatedButton(
                onPressed: (){
                      Get.lazyPut(()=>VerificationScreen());
                Get.toNamed(AppRoutes.verificationScreen);
                },
                text: "lbl_open_mail".tr,
                margin: EdgeInsets.only(left: 8.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGreenToPrimaryTL254Decoration,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
