import 'controller/live_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class LiveDialog extends StatelessWidget {
  LiveDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  LiveController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 41.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 238.h,
            child: Text(
              "msg_are_you_sure_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallGray80003Medium.copyWith(
                height: 1.20,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          CustomElevatedButton(
            height: 48.v,
            text: "lbl_yes_please".tr,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            buttonStyle: CustomButtonStyles.none,
            decoration:
                CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
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
                text: "lbl_cancel".tr,
                buttonStyle: CustomButtonStyles.outlineTL24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
