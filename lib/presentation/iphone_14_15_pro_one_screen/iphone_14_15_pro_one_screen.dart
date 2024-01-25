import 'controller/iphone_14_15_pro_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class Iphone1415ProOneScreen extends GetWidget<Iphone1415ProOneController> {
  const Iphone1415ProOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 301.v),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLayerBlur,
                      height: 235.v,
                      width: 110.h,
                      margin: EdgeInsets.only(top: 15.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup116x173,
                      height: 116.v,
                      width: 173.h,
                      margin: EdgeInsets.only(top: 67.v, bottom: 66.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgLayerBlur235x93,
                      height: 235.v,
                      width: 93.h,
                      margin:
                          EdgeInsets.only(left: 17.h, top: 9.v, bottom: 6.v))
                ]))));
  }
}
