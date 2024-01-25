import 'package:muhammad_zubair_s_application4/presentation/account_creation_two_dialog/account_creation_two_dialog.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_three_screen/verification_three_screen.dart';

import 'controller/account_creation_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_phone_number.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore_for_file: must_be_immutable
class AccountCreationScreen extends GetWidget<AccountCreationController> {
  AccountCreationScreen({Key? key})
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1025,
                      height: 5.v,
                      width: 352.h,
                    ),
                    SizedBox(height: 38.v),
                    Text(
                      "msg_confirm_mobile_number".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 303.h,
                      margin: EdgeInsets.only(right: 49.h),
                      child: Text(
                        "msg_please_enter_the".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeGray40005,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CustomDropDown(
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownGray80003,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                      ),
                      hintText: "lbl_united_states".tr,
                      items: controller.accountCreationModelObj.value
                          .dropdownItemList!.value,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(22.h, 19.v, 8.h, 19.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIconUnitedStates,
                          height: 13.v,
                          width: 17.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 52.v,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                      onChanged: (value) {
                        controller.onSelected(value);
                      },
                    ),
                    SizedBox(height: 20.v),
                    Obx(
                      () => CustomPhoneNumber(
                        country: controller.selectedCountry.value,
                        controller: controller.phoneNumberController,
                        onTap: (Country value) {
                          controller.selectedCountry.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: 40.v),
                    _buildFrame(context),
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
  Widget _buildFrame(BuildContext context) {
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
             _showCustomDialog(context);
                // Get.toNamed(()=>);
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

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Container(
            width: 300.h,
            padding: EdgeInsets.symmetric(
              horizontal: 34.h,
              vertical: 42.v,
            ),
            decoration: AppDecoration.fillLime.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "msg_allow_hi_live_to".tr,
                  style: CustomTextStyles.titleSmallGray80003Medium,
                ),
                SizedBox(height: 26.v),
                CustomElevatedButton(
                
                  height: 48.v,
                  text: "lbl_allow".tr,
                  margin: EdgeInsets.symmetric(horizontal: 3.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
                  onPressed: () {
                    // Handle the "Allow" button action here
                    // Get.back(); // Close the dialog
                         Get.lazyPut(()=>VerificationThreeScreen());
                Get.toNamed(AppRoutes.verificationThreeScreen);
                  },
                ),
                SizedBox(height: 12.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
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
                      text: "lbl_deny".tr,
                      buttonStyle: CustomButtonStyles.outlineTL24,
                      onPressed: () {
                        // Handle the "Deny" button action here
                        Get.back(); // Close the dialog
                      },
                    ),
                  ),
                ),
                SizedBox(height: 18.v),
              ],
            ),
          ),
        );
      },
    );
  }

}
