import 'package:muhammad_zubair_s_application4/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_checkbox_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

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
                                horizontal: 20.h, vertical: 26.v),
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup116x173,
                                  height: 81.v,
                                  width: 121.h),
                              SizedBox(height: 79.v),
                              Text("lbl_welcome".tr,
                                  style: theme.textTheme.headlineMedium),
                              SizedBox(height: 34.v),
                              CustomTextFormField(
                                  controller: controller.emailController,
                                  hintText: "lbl_email_address".tr,
                                  hintStyle: CustomTextStyles.titleSmallGray700,
                                  textInputType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_email"
                                          .tr;
                                    }
                                    return null;
                                  }),
                              SizedBox(height: 19.v),
                              Obx(() => CustomTextFormField(
                                  controller: controller.passwordController,
                                  hintText: "lbl_password".tr,
                                  hintStyle: CustomTextStyles.titleSmallGray700,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        controller.isShowPassword.value =
                                            !controller.isShowPassword.value;
                                      },
                                      child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 18.v, 26.h, 18.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant.imgEye,
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
                                  obscureText: controller.isShowPassword.value,
                                  contentPadding: EdgeInsets.only(
                                      left: 20.h, top: 17.v, bottom: 17.v))),
                              SizedBox(height: 20.v),
                              _buildFrameNine(),
                              SizedBox(height: 47.v),
                              CustomElevatedButton(
                                onPressed: (){
                                    if (_formKey.currentState!.validate() ) {
                                        String email = controller.emailController.text;
                                         String password = controller.passwordController.text;
                                         print(email.toString());
                                         print(password.toString());

                                      controller.signIn(email, password, context);
                                    }
                                   
                                },
                                  text: "lbl_sign_in".tr,
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
                              GestureDetector(
                                onTap: (){
                                    Get.lazyPut(()=>SignUpOneScreen());
                Get.toNamed(AppRoutes.signUpOneScreen);
                                },
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "msg_don_t_have_an_account2".tr,
                                          style: CustomTextStyles
                                              .labelMediumff4c4c4c11),
                                      TextSpan(
                                          text: "lbl_sign_up".tr,
                                          style: CustomTextStyles
                                              .labelMediumff119645)
                                    ]),
                                    textAlign: TextAlign.left),
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

  /// Section Widget
  Widget _buildFrameNine() {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Obx(() => CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: controller.rememberMe.value,
              padding: EdgeInsets.symmetric(vertical: 3.v),
              textStyle: CustomTextStyles.labelLargeGray80003,
              onChange: (value) {
                controller.rememberMe.value = value;
              })),
          GestureDetector(
            onTap: (){
               Get.lazyPut(()=>ForgotPasswordScreen());
                Get.toNamed(AppRoutes.forgotPasswordScreen);
            },
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4.v),
                child: Text("msg_forgot_password".tr,
                    style: CustomTextStyles.labelLargeGray80003Bold)),
          )
        ]));
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
