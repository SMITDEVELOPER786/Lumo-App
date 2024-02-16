import '../controller/blocked_list_controller.dart';
import '../models/userprofile12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile12ItemWidget extends StatelessWidget {
  Userprofile12ItemWidget(
    this.userprofile12ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile12ItemModel userprofile12ItemModelObj;

  var controller = Get.find<BlockedListController>();

  @override
  Widget build(BuildContext context) {
    return 
    Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillLime10011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile12ItemModelObj.userImage!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(top: 1.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.v,
                  width: 97.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Obx(
                          () => Text(
                            userprofile12ItemModelObj.empireBbyText!.value,
                            style: CustomTextStyles.labelLargeGray80001SemiBold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 111.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile12ItemModelObj
                              .illinoisTexasImage1!.value,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                        ),
                      ),
                      Obx(
                        () => Text(
                          userprofile12ItemModelObj.illinoisTexasText!.value,
                          style: CustomTextStyles.bodySmallInterGray60011,
                        ),
                      ),
                      Obx(
                        () => CustomImageView(
                          imagePath: userprofile12ItemModelObj
                              .illinoisTexasImage2!.value,
                          height: 12.adaptSize,
                          width: 12.adaptSize,
                        ),
                      ),
                      Obx(
                        () => Text(
                          userprofile12ItemModelObj.twentyThreeText!.value,
                          style: CustomTextStyles.bodySmallInterGray60011,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 25.v,
            width: 84.h,
            text: "lbl_go_guardian".tr,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 14.h,
              bottom: 7.v,
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL10Decoration,
            buttonTextStyle: CustomTextStyles.labelMedium11,
          ),
        ],
      ),
    );
  }
}
