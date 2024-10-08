import 'controller/sign_up_active_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_checkbox_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class SignUpActiveScreen extends GetWidget<SignUpActiveController> {
  SignUpActiveScreen({Key? key}) : super(key: key);

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
                                horizontal: 20.h, vertical: 28.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup116x173,
                                   height: 201.v,
                width: 221.h,),
                              SizedBox(height: 78.v),
                              Text("msg_create_an_account".tr,
                                  style: theme.textTheme.headlineMedium),
                              SizedBox(height: 34.v),
                              CustomTextFormField(
                                  controller: controller.weburlController,
                                  hintText: "msg_yourgmail_proton".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallGray80003),
                              SizedBox(height: 19.v),
                              OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  gradient: LinearGradient(
                                      begin: Alignment(1.03, 1.11),
                                      end: Alignment(0.07, -0.41),
                                      colors: [
                                        appTheme.green70002,
                                        theme.colorScheme.primary
                                      ]),
                                  corners: Corners(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25),
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25)),
                                  child: Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "lbl".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray80003,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 26.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h, top: 17.v, bottom: 17.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.outline))),
                              SizedBox(height: 20.v),
                              _buildCheckSquare(),
                              SizedBox(height: 47.v),
                              CustomElevatedButton(
                                  text: "lbl_sign_up".tr,
                                  buttonStyle: CustomButtonStyles.none,
                                  decoration: CustomButtonStyles
                                      .gradientGreenToPrimaryTL25Decoration),
                              SizedBox(height: 35.v),
                              _buildFrameFour(),
                              SizedBox(height: 31.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 50.adaptSize,
                                        width: 50.adaptSize,
                                        padding: EdgeInsets.all(13.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineGray,
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGoogleLogo)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: CustomIconButton(
                                            height: 50.adaptSize,
                                            width: 50.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            decoration: IconButtonStyleHelper
                                                .outlineGray,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgAppleLogo)))
                                  ]),
                              SizedBox(height: 35.v),
                              RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_already_have_an2".tr,
                                        style: CustomTextStyles
                                            .labelMediumff4c4c4c11),
                                    TextSpan(
                                        text: "lbl_sign_in".tr,
                                        style: CustomTextStyles
                                            .labelMediumff119645)
                                  ]),
                                  textAlign: TextAlign.left),
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

  /// Section Widget
  Widget _buildCheckSquare() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Obx(() => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_accept_hi_live_terms".tr,
            value: controller.checkSquare.value,
            padding: EdgeInsets.symmetric(vertical: 4.v),
            onChange: (value) {
              controller.checkSquare.value = value;
            })));
  }

  /// Section Widget
  Widget _buildFrameFour() {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
                  child: SizedBox(
                      width: 102.h, child: Divider(color: appTheme.gray20002))),
              Text("msg_or_continue_with".tr,
                  style: CustomTextStyles.labelLargeGray80003SemiBold),
              Padding(
                  padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
                  child: SizedBox(
                      width: 102.h, child: Divider(color: appTheme.gray20002)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }
}
