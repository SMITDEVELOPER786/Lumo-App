import 'package:muhammad_zubair_s_application4/presentation/pk_live_view/pk_live_view.dart';

import '../controller/homepage_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.lazyPut(() => PKLiveView());
        Get.to(() => PKLiveView());

      },
      child: SizedBox(
        height: 205.v,
        width: 170.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofile1ItemModelObj.image!.value,
                height: 205.v,
                width: 170.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                          height: 20.v,
                          width: 66.h,
                          text: "lbl_new".tr,
                          margin: EdgeInsets.only(bottom: 4.v),
                          leftIcon: Container(
                            margin: EdgeInsets.only(right: 2.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: theme.textTheme.labelMedium!,
                        ),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(4.h),
                          decoration:
                              IconButtonStyleHelper.gradientGreenToPrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUpload,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 133.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 29.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillGrayC.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 14.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Obx(
                                  () => Text(
                                    userprofile1ItemModelObj.userName!.value,
                                    style: CustomTextStyles.labelLargeSemiBold,
                                  ),
                                ),
                                Obx(
                                  () => CustomImageView(
                                    imagePath:
                                        userprofile1ItemModelObj.userImage!.value,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.only(left: 2.h),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 3.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMappin,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                              ),
                              Obx(
                                () => Text(
                                  userprofile1ItemModelObj.text1!.value,
                                  style: CustomTextStyles
                                      .bodySmallInterWhiteA70010_1,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgConfetti,
                                height: 12.adaptSize,
                                width: 12.adaptSize,
                              ),
                              Obx(
                                () => Text(
                                  userprofile1ItemModelObj.text2!.value,
                                  style: CustomTextStyles
                                      .bodySmallInterWhiteA70010_1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.v),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
