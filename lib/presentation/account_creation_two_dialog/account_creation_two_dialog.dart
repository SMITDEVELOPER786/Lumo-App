import 'controller/account_creation_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class AccountCreationTwoDialog extends StatelessWidget {
  AccountCreationTwoDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  AccountCreationTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 163, 226, 15).withOpacity(0.8),  // Start with yellow at the top
      Color.fromARGB(255, 43, 112, 45),   // Transition to green at the bottom
    ],
     stops: [0.2, 1.0],
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
              ),
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
