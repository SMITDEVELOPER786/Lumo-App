import 'package:muhammad_zubair_s_application4/presentation/verification_one_screen/verification_one_screen.dart';

import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.h, vertical: 23.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgForgot1,
                                      height: 150.v,
                                      width: 215.h,
                                      margin: EdgeInsets.only(left: 66.h)),
                                  SizedBox(height: 14.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 52.h),
                                      child: Text("msg_forgot_password".tr,
                                          style: CustomTextStyles
                                              .headlineMediumInter)),
                                  SizedBox(height: 11.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 279.h,
                                          margin: EdgeInsets.only(
                                              left: 35.h, right: 45.h),
                                          child: Text("msg_enter_your_email".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .labelLargeGray70002
                                                  .copyWith(height: 1.54)))),
                                  SizedBox(height: 68.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: CustomTextFormField(
                                          controller:
                                              controller.emailController,
                                          hintText: "lbl_email_address".tr,
                                          hintStyle: CustomTextStyles
                                              .titleSmallGray50013,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return "err_msg_please_enter_valid_email"
                                                  .tr;
                                            }
                                            return null;
                                          })),
                                  SizedBox(height: 22.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Text("msg_recover_with_mobile".tr,
                                          style: CustomTextStyles
                                              .labelLargeGreen70002SemiBold)),
                                  SizedBox(height: 35.v),
                                  CustomElevatedButton(
                                    onPressed: () {
                                      Get.lazyPut(
                                          () => VerificationOneScreen());
                                      Get.toNamed(
                                          AppRoutes.verificationOneScreen);
                                    },
                                    text: "msg_recover_password".tr,
                                    margin: EdgeInsets.only(left: 8.h),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientGreenToPrimaryTL25Decoration,
                                  ),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(27.h, 4.v, 358.h, 4.v),
            onTap: () {
              onTapVector();
            }));
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }
}
