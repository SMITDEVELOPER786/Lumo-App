import '../controller/homepage_three_controller.dart';
import '../models/homepagethree_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomepagethreeItemWidget extends StatelessWidget {
  HomepagethreeItemWidget(
    this.homepagethreeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepagethreeItemModel homepagethreeItemModelObj;

  var controller = Get.find<HomepageThreeController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Obx(
        () => CustomImageView(
          imagePath: homepagethreeItemModelObj.group!.value,
          height: 400.v,
          width: 393.h,
        ),
      ),
    );
  }
}
