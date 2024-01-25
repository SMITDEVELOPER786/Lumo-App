import '../controller/guardian_one_controller.dart';
import '../models/entryeffects_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class EntryeffectsItemWidget extends StatelessWidget {
  EntryeffectsItemWidget(
    this.entryeffectsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EntryeffectsItemModel entryeffectsItemModelObj;

  var controller = Get.find<GuardianOneController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.fillLightgreen5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Container(
            height: 24.v,
            width: 29.h,
            padding: EdgeInsets.symmetric(
              horizontal: 6.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.fillOnError.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder1,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: entryeffectsItemModelObj.entryImage!.value,
                height: 14.adaptSize,
                width: 14.adaptSize,
                alignment: Alignment.bottomRight,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Obx(
            () => Text(
              entryeffectsItemModelObj.entryText!.value,
              style: CustomTextStyles.labelMediumGray8000311_1,
            ),
          ),
        ],
      ),
    );
  }
}
