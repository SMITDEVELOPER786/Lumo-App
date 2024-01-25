import '../controller/homepage_two_controller.dart';
import '../models/homepagetwo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class HomepagetwoItemWidget extends StatelessWidget {
  HomepagetwoItemWidget(
    this.homepagetwoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HomepagetwoItemModel homepagetwoItemModelObj;

  var controller = Get.find<HomepageTwoController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomImageView(
        imagePath: homepagetwoItemModelObj.screen!.value,
        height: 150.v,
        width: 353.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
