import '../controller/withdrawal_controller.dart';
import '../models/userprofile10_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile10ItemWidget extends StatelessWidget {
  Userprofile10ItemWidget(
    this.userprofile10ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile10ItemModel userprofile10ItemModelObj;

  var controller = Get.find<WithdrawalController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillGreen5004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      width: 170.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Container(
            height: 27.v,
            width: 33.h,
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillLightgreen10005.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder1,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofile10ItemModelObj.diamondImage!.value,
                height: 16.adaptSize,
                width: 16.adaptSize,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              userprofile10ItemModelObj.convertText!.value,
              style: CustomTextStyles.labelLargeGray8000313,
            ),
          ),
        ],
      ),
    );
  }
}
