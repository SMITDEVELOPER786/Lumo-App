import 'package:muhammad_zubair_s_application4/presentation/account_creation_one_screen/account_creation_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/sign_in_screen.dart';

import 'controller/sign_up_controller.dart';
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
class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var controller = Get.put(SignUpController());

  @override
  void onInit() {
    controller.fetchUserCountry();
   
  }

  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 28.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup116x173,
                    height: 201.v,
                    width: 221.h,
                  ),
                  SizedBox(height: 78.v),
                  _buildEmail(),
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
                        decoration: IconButtonStyleHelper.outlineGray,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogleLogo,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: CustomIconButton(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlineGray,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgAppleLogo,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35.v),
                  GestureDetector(
                    onTap: () {
                      Get.lazyPut(() => SignInScreen());
                      Get.toNamed(AppRoutes.signInScreen);
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_already_have_an2".tr,
                            style: CustomTextStyles.labelMediumff4c4c4c11,
                          ),
                          TextSpan(
                            text: "lbl_sign_in".tr,
                            style: CustomTextStyles.labelMediumff119645,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 392.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorBlack900,
        margin: EdgeInsets.fromLTRB(27.h, 4.v, 358.h, 4.v),
        onTap: () {
          onTapVector();
        },
      ),
    );
  }

  Widget _buildEmail() {
    return SizedBox(
      // height: 370.v,
      width: double.maxFinite,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "msg_create_an_account".tr,
              style: theme.textTheme.headlineMedium,
            ),
            SizedBox(height: 34.v),
            CustomTextFormField(
                controller: controller.emailController,
                hintText: "lbl_email_address".tr,
                hintStyle: CustomTextStyles.titleSmallGray700,
                textInputType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null ||
                      (!isValidEmail(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_email".tr;
                  }
                  return null;
                },
                borderDecoration: TextFormFieldStyleHelper.fillLightGreen,
                fillColor: appTheme.lightGreen50),
            SizedBox(height: 19.v),
            CustomTextFormField(
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
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 26.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(maxHeight: 52.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              contentPadding: EdgeInsets.only(
                left: 20.h,
                top: 17.v,
                bottom: 17.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillLightGreen,
              fillColor: appTheme.lightGreen50,
            ),
            SizedBox(height: 20.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Obx(
                () => CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "msg_accept_hi_live_terms".tr,
                  value: controller.checkSquare.value,
                  padding: EdgeInsets.symmetric(vertical: 4.v),
                  onChange: (value) {
                    controller.checkSquare.value = value;
                  },
                ),
              ),
            ),
            SizedBox(height: 47.v),
            CustomElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (controller.checkSquare.value == true) {
                    String email = controller.emailController.text;
                    String password = controller.passwordController.text;
                    String country = controller.userCountry.value;
                    controller.signUp(email, password, country,  context);
                  } else {
                    Get.snackbar(
                        "Error", "Please agree with the terms and services");
                  }
                }
              },
              text: "lbl_sign_up".tr,
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientGreenToPrimaryTL25Decoration,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFrameFour() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 28.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
            child: SizedBox(
              width: 102.h,
              child: Divider(color: appTheme.gray20002),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.h),
            child: Text(
              "msg_or_continue_with".tr,
              style: CustomTextStyles.labelLargeGray80003SemiBold,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
            child: SizedBox(
              width: 123.h,
              child: Divider(color: appTheme.gray20002, indent: 21.h),
            ),
          ),
        ],
      ),
    );
  }

  onTapVector() {
    Get.back();
  }
}
