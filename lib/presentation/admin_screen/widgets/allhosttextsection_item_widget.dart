import '../controller/admin_controller.dart';
import '../models/allhosttextsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class AllhosttextsectionItemWidget extends StatelessWidget {
  AllhosttextsectionItemWidget(
    this.allhosttextsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  AllhosttextsectionItemModel allhosttextsectionItemModelObj;

  var controller = Get.find<AdminController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 33.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillLightGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: allhosttextsectionItemModelObj.allHostImage!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            SizedBox(height: 8.v),
            Obx(
              () => Text(
                allhosttextsectionItemModelObj.allHostText!.value,
                style: CustomTextStyles.labelMediumGray8000311,
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
