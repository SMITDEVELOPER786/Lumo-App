import '../controller/search_controller.dart';
import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<SearchController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205.v,
      width: 170.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile2ItemModelObj.houseImage!.value,
              height: 205.v,
              width: 170.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 8.v,
                right: 54.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillGrayF.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile2ItemModelObj.houseImage1!.value,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Obx(
                            () => Text(
                              userprofile2ItemModelObj.houseText!.value,
                              style: CustomTextStyles.labelMedium11,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 142.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Obx(
                          () => Text(
                            userprofile2ItemModelObj.userName!.value,
                            style: CustomTextStyles.labelLargeSemiBold,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgClose16x16,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 11.h),
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
          ),
        ],
      ),
    );
  }
}
