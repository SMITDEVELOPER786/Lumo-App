import 'controller/iphone_14_15_pro_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class Iphone1415ProOneScreen extends GetWidget<Iphone1415ProOneController> {
  const Iphone1415ProOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 101.v),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup116x173,
                        height: 301.v,
                  width: 321.h,
                        margin: EdgeInsets.only(top: 67.v, bottom: 66.v)),
                
                  ])),
            )));
  }
}
