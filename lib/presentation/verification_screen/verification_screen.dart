import 'package:muhammad_zubair_s_application4/presentation/create_password_screen/create_password_screen.dart';

import 'controller/verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class VerificationScreen extends GetWidget<VerificationController> {
  const VerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 75.v,
            right: 20.h,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_verify_your_account".tr,
                  style: CustomTextStyles.titleLargeGray80003,
                ),
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_enter_the_code_sent2".tr,
                  style: CustomTextStyles.labelLargeGray40005,
                ),
              ),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 23.h,
                  right: 22.h,
                ),
                child: Obx(
                  () => CustomPinCodeTextField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter all fields.';
                      }
                      return null;
                    },
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {
                      controller.enteredPin = value;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "lbl_00_52".tr,
                style: CustomTextStyles.bodyMediumGreen70002,
              ),
              SizedBox(height: 25.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_didn_t_receive_a2".tr,
                      style: CustomTextStyles.bodyMediumff486484,
                    ),
                    TextSpan(
                      text: "lbl_resend_code".tr,
                      style: CustomTextStyles.labelLargeff119645.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 61.v),
              CustomElevatedButton(
                onPressed: () async {
                  String otp = controller.otpController.value.text.toString();
                  if (otp.length == 4) {
                    await controller.verifyOtp(otp, context);
                  }
                },
                text: "lbl_confirm".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGreenToPrimaryTL253Decoration,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
