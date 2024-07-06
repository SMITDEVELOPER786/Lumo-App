import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/main.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_screen/controller/sign_up_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_screen/sign_up_screen.dart';

import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';

class SignUpOneScreen extends StatefulWidget {
  const SignUpOneScreen({Key? key}) : super(key: key);

  @override
  State<SignUpOneScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpOneScreen> {
  var controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup116x173,
                height: 81.v,
                width: 121.h,
              ),
              SizedBox(height: 16.v),
              _buildContinueWithGoogle(),
              SizedBox(height: 16.v),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: CustomOutlinedButton(
                  onPressed: () async {
                    print("object");
                    await signInWithGooglel();
                  },
                  text: "msg_continue_with_google".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 30.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGoogleLogo,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle: CustomTextStyles.titleSmallGray70010,
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
               padding:  EdgeInsets.symmetric(horizontal: 20),
                child: CustomOutlinedButton(
                  text: "msg_continue_with_apple".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 30.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAppleLogo,
                      height: 29.v,
                      width: 24.h,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlineGray,
                  buttonTextStyle: CustomTextStyles.titleSmallGray70010,
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                onPressed: () {
                  Get.lazyPut(() => SignUpScreen());
                  Get.toNamed(AppRoutes.signUpScreen);
                },
                text: "msg_sign_up_with_password".tr,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGreenToPrimaryTL25Decoration,
              ),
              SizedBox(height: 27.v),
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
              SizedBox(height: 1.v),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContinueWithGoogle() {
    return SizedBox(
      height: 294.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              right: 18.h,
              bottom: 47.v,
            ),
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_access_your_world".tr,
                  style: theme.textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 6.v,
                  ),
                  child: SizedBox(
                    width: 144.h,
                    child: Divider(
                      color: appTheme.gray20002,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "lbl_or".tr,
                    style: CustomTextStyles.labelLargeGray80003SemiBold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 7.v,
                    bottom: 6.v,
                  ),
                  child: SizedBox(
                    width: 165.h,
                    child: Divider(
                      color: appTheme.gray20002,
                      indent: 21.h,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1000003927,
            // height: 289.v,
            width: 393.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}



// // ignore_for_file: must_be_immutable
// class SignUpOneScreen extends GetWidget<SignUpOneController> {
//   const SignUpOneScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }

//   /// Section Widget

