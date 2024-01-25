import '../controller/gift_one_controller.dart';
import '../models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  var controller = Get.find<GiftOneController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 15.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlineGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofile4ItemModelObj.userImage!.value,
                height: 64.adaptSize,
                width: 64.adaptSize,
              ),
            ),
            SizedBox(height: 2.v),
            Obx(
              () => Text(
                userprofile4ItemModelObj.userName!.value,
                style: CustomTextStyles.labelMediumGray80001SemiBold11,
              ),
            ),
            SizedBox(height: 1.v),
            SizedBox(
              height: 15.v,
              width: 43.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngegg51,
                    height: 15.v,
                    width: 21.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => Text(
                        userprofile4ItemModelObj.stackText!.value,
                        style: CustomTextStyles.bodySmallInterGray70007,
                      ),
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
