import '../controller/vip_7_controller.dart';
import '../models/userprofile15_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile15ItemWidget extends StatelessWidget {
  Userprofile15ItemWidget(
    this.userprofile15ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile15ItemModel userprofile15ItemModelObj;

  var controller = Get.find<Vip7Controller>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 59.h,
      child: Column(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile15ItemModelObj.vipBadgeImage!.value,
              height: 47.adaptSize,
              width: 47.adaptSize,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              userprofile15ItemModelObj.vipBadgeText!.value,
              style: CustomTextStyles.bodySmallInterBluegray5002,
            ),
          ),
          SizedBox(height: 13.v),
          Obx(
            () => CustomImageView(
              imagePath: userprofile15ItemModelObj.closeImage!.value,
              height: 42.v,
              width: 34.h,
            ),
          ),
          SizedBox(height: 4.v),
          Obx(
            () => Text(
              userprofile15ItemModelObj.carText!.value,
              style: CustomTextStyles.bodySmallInterBluegray5002,
            ),
          ),
          SizedBox(height: 15.v),
          Obx(
            () => CustomImageView(
              imagePath: userprofile15ItemModelObj.vipBadgeImage1!.value,
              height: 42.v,
              width: 34.h,
            ),
          ),
          SizedBox(height: 5.v),
          Obx(
            () => Text(
              userprofile15ItemModelObj.privilegeText!.value,
              style: CustomTextStyles.bodySmallInterBluegray5002,
            ),
          ),
          SizedBox(height: 13.v),
          Obx(
            () => CustomImageView(
              imagePath: userprofile15ItemModelObj.vipBadgeImage2!.value,
              height: 42.v,
              width: 34.h,
            ),
          ),
          SizedBox(height: 3.v),
          Obx(
            () => Text(
              userprofile15ItemModelObj.hideText!.value,
              style: CustomTextStyles.bodySmallArialBluegray5002,
            ),
          ),
        ],
      ),
    );
  }
}
