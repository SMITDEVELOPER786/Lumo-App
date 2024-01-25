import 'package:muhammad_zubair_s_application4/presentation/verification_five_screen/verification_five_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_seven_screen/verification_seven_screen.dart';

import 'controller/verification_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class VerificationFourScreen extends GetWidget<VerificationFourController> {
  VerificationFourScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 56.v,
                ),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1025,
                      height: 5.v,
                      width: 352.h,
                    ),
                    SizedBox(height: 40.v),
                    Text(
                      "msg_upload_your_profile".tr,
                      style: CustomTextStyles.titleLargeGray90008,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      "msg_enter_your_preferred".tr,
                      style: CustomTextStyles.labelLargeGray40005,
                    ),
                    SizedBox(height: 22.v),
                    Container(
                      height: 120.adaptSize,
                      width: 120.adaptSize,
                      padding: EdgeInsets.all(28.h),
                      decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder60,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCameraWhiteA700,
                        height: 64.adaptSize,
                        width: 64.adaptSize,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 28.v),
                    CustomTextFormField(
                      controller: controller.userNameController,
                      hintText: "lbl_username".tr,
                      hintStyle: CustomTextStyles.titleSmallGray700,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 43.v),
                    _buildFrame(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment(1.03, 1.11),
                end: Alignment(0.07, -0.41),
                colors: [
                  appTheme.green70002,
                  theme.colorScheme.primary,
                ],
              ),
              corners: Corners(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: CustomOutlinedButton(
                onPressed: (){
                   Get.back();
                },
                text: "lbl_previous".tr,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            onPressed: (){
                Get.lazyPut(()=>VerificationSevenScreen());
                Get.toNamed(AppRoutes.verificationSevenScreen);
            },
            height: 48.v,
            text: "lbl_proceed".tr,
            margin: EdgeInsets.only(left: 4.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL24Decoration,
          ),
        ),
      ],
    );
  }
}
