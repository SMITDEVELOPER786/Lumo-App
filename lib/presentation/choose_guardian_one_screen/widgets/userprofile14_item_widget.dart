import 'package:muhammad_zubair_s_application4/presentation/choose_guardian_screen/choose_guardian_screen.dart';

import '../controller/choose_guardian_one_controller.dart';
import '../models/userprofile14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile14ItemWidget extends StatelessWidget {
  Userprofile14ItemWidget(
    this.userprofile14ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile14ItemModel userprofile14ItemModelObj;

  var controller = Get.find<ChooseGuardianOneController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.lazyPut(() => ChooseGuardianScreen());
        Get.to(() => ChooseGuardianScreen());

      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillLime10011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => GestureDetector(
                onTap: (){
                    Get.lazyPut(() => ChooseGuardianScreen());
        Get.to(() => ChooseGuardianScreen());
                },
                child: CustomImageView(
                  imagePath: userprofile14ItemModelObj.userImage!.value,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 1.v,
                  ),
                ),
              ),
            ),
            Container(
              height: 34.v,
              width: 128.h,
              margin: EdgeInsets.only(
                left: 8.h,
                top: 8.v,
                bottom: 8.v,
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                                      userprofile14ItemModelObj.username!.value,
                                      style: CustomTextStyles
                                          .labelLargeGray80001SemiBold,
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
                                    imagePath: userprofile14ItemModelObj
                                        .locationImage1!.value,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    userprofile14ItemModelObj.locationText!.value,
                                    style:
                                        CustomTextStyles.bodySmallInterGray60011,
                                  ),
                                ),
                                Obx(
                                  () => CustomImageView(
                                    imagePath: userprofile14ItemModelObj
                                        .locationImage2!.value,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    userprofile14ItemModelObj.ageText!.value,
                                    style:
                                        CustomTextStyles.bodySmallInterGray60011,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 25.h,
                      margin: EdgeInsets.only(top: 2.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.gradientOrangeToYellow.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder1,
                      ),
                      child: Obx(
                        () => Text(
                          userprofile14ItemModelObj.lvTwelve!.value,
                          style: CustomTextStyles.interWhiteA700SemiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomElevatedButton(
              height: 25.v,
              width: 82.h,
              text: "lbl_go_guardian".tr,
              margin: EdgeInsets.only(
                top: 13.v,
                bottom: 12.v,
              ),
              buttonStyle: CustomButtonStyles.none,
              decoration: CustomButtonStyles.gradientGreenToPrimaryTL10Decoration,
              buttonTextStyle: CustomTextStyles.labelMedium11,
            ),
          ],
        ),
      ),
    );
  }
}
