import '../controller/multi_live_controller.dart';
import '../models/multilive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class MultiliveItemWidget extends StatelessWidget {
  MultiliveItemWidget(
    this.multiliveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MultiliveItemModel multiliveItemModelObj;

  var controller = Get.find<MultiLiveController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Obx(
        () => CustomImageView(
          imagePath: multiliveItemModelObj.rectangle!.value,
          height: 58.v,
          width: 62.h,
          radius: BorderRadius.circular(
            6.h,
          ),
          margin: EdgeInsets.only(left: 2.h),
        ),
      ),
    );
  }
}
