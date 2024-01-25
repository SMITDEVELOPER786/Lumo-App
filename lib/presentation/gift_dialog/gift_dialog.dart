import 'controller/gift_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class GiftDialog extends StatelessWidget {
  GiftDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  GiftController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 38.h,
        vertical: 42.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "lbl_follow_marylan".tr,
            style: CustomTextStyles.titleSmallGray80003Medium,
          ),
          SizedBox(height: 26.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_yes_please".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
          ),
          SizedBox(height: 12.v),
          OutlineGradientButton(
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
              text: "lbl_cancel".tr,
              buttonStyle: CustomButtonStyles.outlineTL24,
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
