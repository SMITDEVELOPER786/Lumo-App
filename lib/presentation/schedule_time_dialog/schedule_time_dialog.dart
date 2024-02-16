import 'controller/schedule_time_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ScheduleTimeDialog extends StatelessWidget {
  ScheduleTimeDialog({Key? key}) : super(key: key);

  // ScheduleTimeController controller;
  var controller = Get.put(ScheduleTimeController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 353.h,
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 34.v),
        decoration: AppDecoration.fillLime
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCloseGray80001,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 14.h),
                  onTap: () {
                    onTapImgClose();
                  }),
              SizedBox(height: 7.v),
              Text("msg_schedule_live_time".tr,
                  style: CustomTextStyles.titleSmallGray80001SemiBold_1),
              SizedBox(height: 10.v),
              Text("msg_create_a_live_time".tr,
                  style: CustomTextStyles.labelLargeGray50012),
              SizedBox(height: 35.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 58.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("lbl_next_time".tr,
                            style: CustomTextStyles.titleSmallGray80001),
                        Text("lbl_fixed_time".tr,
                            style: CustomTextStyles.titleSmallGray80001)
                      ])),
              SizedBox(height: 7.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Container(
                      height: 18.v,
                      width: 302.h,
                      decoration: BoxDecoration(
                          color: appTheme.lightGreen5004,
                          borderRadius: BorderRadius.circular(9.h)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(9.h),
                          child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor: appTheme.lightGreen5004)))),
              SizedBox(height: 34.v),
              CustomDropDown(
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 18.v, 17.h, 18.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownGray80001,
                          height: 16.v,
                          width: 14.h)),
                  hintText: "lbl_select_date".tr,
                  hintStyle: CustomTextStyles.titleSmallGray40002,
                  items: controller
                      .scheduleTimeModelObj.value.dropdownItemList!.value,
                  contentPadding:
                      EdgeInsets.only(left: 17.h, top: 17.v, bottom: 17.v),
                  onChanged: (value) {
                    controller.onSelected(value);
                  }),
              SizedBox(height: 12.v),
              CustomDropDown(
                  icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 18.v, 17.h, 18.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownGray80001,
                          height: 16.v,
                          width: 14.h)),
                  hintText: "lbl_select_time".tr,
                  hintStyle: CustomTextStyles.titleSmallGray40002,
                  items: controller
                      .scheduleTimeModelObj.value.dropdownItemList1!.value,
                  contentPadding:
                      EdgeInsets.only(left: 17.h, top: 17.v, bottom: 17.v),
                  onChanged: (value) {
                    controller.onSelected1(value);
                  }),
              SizedBox(height: 12.v),
              CustomElevatedButton(
                  text: "lbl_create".tr,
                  rightIcon: Container(
                      margin: EdgeInsets.only(left: 6.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgUploadGray5001,
                          height: 16.adaptSize,
                          width: 16.adaptSize)),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
                  buttonTextStyle: CustomTextStyles.titleSmallGray5001)
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
