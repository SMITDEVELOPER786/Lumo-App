import '../controller/mall_one_controller.dart';
import '../models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile9ItemWidget extends StatelessWidget {
  Userprofile9ItemWidget(
    this.userprofile9ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile9ItemModel userprofile9ItemModelObj;

  var controller = Get.find<MallOneController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.orange5003,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 103.v,
        width: 169.h,
        padding: EdgeInsets.symmetric(horizontal: 5.h),
        decoration: AppDecoration.fillOrange.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Container(
                  height: 94.v,
                  width: 138.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Container(
                            height: 94.v,
                            width: 138.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgKisspngProduct,
                                  height: 94.v,
                                  width: 125.h,
                                  radius: BorderRadius.circular(
                                    10.h,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    height: 46.v,
                                    width: 65.h,
                                    margin: EdgeInsets.only(top: 11.v),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup1000004166,
                                          height: 46.v,
                                          width: 65.h,
                                          radius: BorderRadius.circular(
                                            10.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            width: 26.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 4.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 4.h,
                                              vertical: 2.v,
                                            ),
                                            decoration: AppDecoration
                                                .fillDeepOrange
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder15,
                                            ),
                                            child: Obx(
                                              () => Text(
                                                userprofile9ItemModelObj
                                                    .id!.value,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 33.v,
                                      right: 25.h,
                                    ),
                                    child: Obx(
                                      () => Text(
                                        userprofile9ItemModelObj
                                            .oneMillionFiveHundredTwentyThr!
                                            .value,
                                        style: CustomTextStyles.labelLarge13,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Container(
                            height: 18.v,
                            width: 68.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgPngegg5117x24,
                                  height: 17.v,
                                  width: 24.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Obx(
                                    () => Text(
                                      userprofile9ItemModelObj
                                          .tenThousandFiveHundred!.value,
                                      style: CustomTextStyles
                                          .labelLargeGray80001SemiBold13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: userprofile9ItemModelObj.id1!.value,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 4.v),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
