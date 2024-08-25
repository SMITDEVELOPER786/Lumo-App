import 'controller/vip_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class VipOneScreen extends GetWidget<VipOneController> {
  const VipOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgClipPathGroup801x391,
                      height: 801.v,
                      width: 391.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 1.v)),
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(child: _buildBuy()))
                ]))));
  }

  /// Section Widget
  Widget _buildBuy() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgClipPathGroup8,
                      height: 801.v,
                      width: 391.h,
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 1.v)),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroupAmberA400,
                      height: 851.v,
                      width: 393.h,
                      alignment: Alignment.center),
                  CustomImageView(
                      imagePath: ImageConstant.imgVector12,
                      height: 412.v,
                      width: 393.h,
                      alignment: Alignment.bottomCenter),
                  CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 852.v,
                      width: 393.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 33.h, right: 36.h, bottom: 15.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup47x47,
                                            height: 47.adaptSize,
                                            width: 47.adaptSize),
                                        SizedBox(height: 5.v),
                                        Text("lbl_vip_badge".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 13.v),
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgClose42x34,
                                            height: 42.v,
                                            width: 34.h),
                                        SizedBox(height: 4.v),
                                        Text("lbl_car".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 15.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray1000144x36,
                                            height: 40.v,
                                            width: 33.h),
                                        SizedBox(height: 5.v),
                                        Text("lbl_privilege".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 13.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray1000144x36,
                                            height: 44.v,
                                            width: 36.h),
                                        SizedBox(height: 3.v),
                                        Text("lbl_hide".tr,
                                            style: CustomTextStyles
                                                .bodySmallArialBluegray5002)
                                      ])),
                                  Spacer(flex: 45),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgClosePink600,
                                            height: 47.v,
                                            width: 39.h,
                                            margin:
                                                EdgeInsets.only(right: 26.h)),
                                        SizedBox(height: 4.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 27.h),
                                            child: Text("lbl_frame".tr,
                                                style: CustomTextStyles
                                                    .bodySmallInterBluegray5002)),
                                        SizedBox(height: 15.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup1,
                                            height: 42.v,
                                            width: 34.h,
                                            margin:
                                                EdgeInsets.only(right: 28.h)),
                                        SizedBox(height: 5.v),
                                        Text("msg_colorful_message".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 14.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgGroupBlueGray10001,
                                            height: 45.v,
                                            width: 37.h,
                                            margin:
                                                EdgeInsets.only(right: 27.h)),
                                        SizedBox(height: 4.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 10.h),
                                            child: Text("lbl_prevent_kick".tr,
                                                style: CustomTextStyles
                                                    .bodySmallInterBluegray5002)),
                                        SizedBox(height: 14.v),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgGroup,
                                            height: 42.v,
                                            width: 34.h,
                                            margin:
                                                EdgeInsets.only(right: 28.h)),
                                        SizedBox(height: 3.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 22.h),
                                            child: Text("lbl_id_unben".tr,
                                                style: CustomTextStyles
                                                    .bodySmallArialBluegray5002))
                                      ]),
                                  Spacer(flex: 54),
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 5.v),
                                      child: Column(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup47x39,
                                            height: 47.v,
                                            width: 39.h),
                                        SizedBox(height: 4.v),
                                        Text("msg_entrance_effects".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 15.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray1000140x33,
                                            height: 40.v,
                                            width: 33.h),
                                        SizedBox(height: 5.v),
                                        Text("lbl_flyingy_message".tr,
                                            style: CustomTextStyles
                                                .bodySmallInterBluegray5002),
                                        SizedBox(height: 13.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray1000141x33,
                                            height: 41.v,
                                            width: 33.h),
                                        SizedBox(height: 3.v),
                                        Text("lbl_gift".tr,
                                            style: CustomTextStyles
                                                .bodySmallArialBluegray5002),
                                        SizedBox(height: 16.v),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgTelevisionBlueGray10001,
                                            height: 42.v,
                                            width: 34.h),
                                        SizedBox(height: 4.v),
                                        Text("lbl_help_desk".tr,
                                            style: CustomTextStyles
                                                .bodySmallArialBluegray5002)
                                      ]))
                                ]),
                            SizedBox(height: 17.v),
                            CustomElevatedButton(
                                height: 38.v,
                                width: 214.h,
                                text: "lbl_buy".tr,
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientGreenToLimeADecoration,
                                buttonTextStyle: theme.textTheme.bodyLarge!)
                          ]))),
                  Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h, top: 53.v),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant
                                          .imgCheckmarkWhiteA70024x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      onTap: () {
                                        onTapImgArrowLeft();
                                      }),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 142.h, top: 4.v, bottom: 3.v),
                                      child: Text("lbl_vip".tr,
                                          style: CustomTextStyles.labelLarge13))
                                ]),
                                SizedBox(height: 27.v),
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomElevatedButton(
                                          height: 22.v,
                                          width: 57.h,
                                          text: "lbl_vip_1".tr,
                                          buttonStyle: CustomButtonStyles.none,
                                          decoration: CustomButtonStyles
                                              .gradientGreenToPrimaryTL10Decoration,
                                          buttonTextStyle:
                                              theme.textTheme.labelLarge!),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 18.h,
                                              top: 3.v,
                                              bottom: 3.v),
                                          child: Text("lbl_vip_22".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Spacer(flex: 20),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.v),
                                          child: Text("lbl_vip_3".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Spacer(flex: 20),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.v),
                                          child: _buildVIPCounter(
                                              vipCounterText: "lbl_vip_4".tr,
                                              vIP: "lbl_vip2".tr)),
                                      Spacer(flex: 20),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.v),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("lbl_vip".tr,
                                                    style: theme
                                                        .textTheme.labelLarge),
                                                Text("lbl_vip_5".tr,
                                                    style: theme
                                                        .textTheme.labelLarge)
                                              ])),
                                      Spacer(flex: 20),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 3.v),
                                          child: _buildVIPCounter(
                                              vipCounterText: "lbl_vip_6".tr,
                                              vIP: "lbl_vip2".tr)),
                                      Spacer(flex: 20),
                                      Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 4.v),
                                          child: _buildVIPCounter(
                                              vipCounterText: "lbl_vip_6".tr,
                                              vIP: "lbl_vip2".tr))
                                    ]),
                                SizedBox(height: 52.v),
                                Container(
                                    height: 136.v,
                                    width: 167.h,
                                    margin: EdgeInsets.only(left: 93.h),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 90.v,
                                                  width: 78.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Container(
                                                                width: 78.h,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical: 22
                                                                            .v),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: AssetImage(ImageConstant
                                                                            .imgGroup829),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      SizedBox(
                                                                          height: 45
                                                                              .v,
                                                                          child: VerticalDivider(
                                                                              width: 5.h,
                                                                              thickness: 5.v)),
                                                                      SizedBox(
                                                                          height: 45
                                                                              .v,
                                                                          child: VerticalDivider(
                                                                              width: 5.h,
                                                                              thickness: 5.v))
                                                                    ]))),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClose16x16,
                                                            height: 25.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .topRight),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClose16x16,
                                                            height: 25.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .bottomLeft),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClose16x16,
                                                            height: 25.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .topLeft),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgClose16x16,
                                                            height: 25.v,
                                                            width: 39.h,
                                                            alignment: Alignment
                                                                .bottomRight),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 90.v,
                                                                width: 78.h,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgClipPathGroup90x78,
                                                                          height: 90
                                                                              .v,
                                                                          width: 78
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: SizedBox(
                                                                              height: 86.v,
                                                                              width: 72.h,
                                                                              child: Stack(alignment: Alignment.topLeft, children: [
                                                                                Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: SizedBox(
                                                                                        height: 83.v,
                                                                                        width: 72.h,
                                                                                        child: Stack(alignment: Alignment.center, children: [
                                                                                          CustomImageView(imagePath: ImageConstant.imgGroup829, height: 83.v, width: 72.h, alignment: Alignment.center),
                                                                                          Align(
                                                                                              alignment: Alignment.center,
                                                                                              child: SizedBox(
                                                                                                  height: 83.v,
                                                                                                  width: 72.h,
                                                                                                  child: Stack(alignment: Alignment.center, children: [
                                                                                                    CustomImageView(imagePath: ImageConstant.imgClipPathGroup83x72, height: 83.v, width: 72.h, alignment: Alignment.center),
                                                                                                    Align(
                                                                                                        alignment: Alignment.center,
                                                                                                        child: SizedBox(
                                                                                                            height: 83.v,
                                                                                                            width: 72.h,
                                                                                                            child: Stack(alignment: Alignment.center, children: [
                                                                                                              CustomImageView(imagePath: ImageConstant.imgClipPathGroup15, height: 83.v, width: 72.h, alignment: Alignment.center),
                                                                                                              CustomImageView(imagePath: ImageConstant.imgClipPathGroup16, height: 83.v, width: 72.h, alignment: Alignment.center)
                                                                                                            ])))
                                                                                                  ])))
                                                                                        ]))),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector25x60, height: 15.v, width: 36.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 14.h))
                                                                              ])))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup56x35,
                                              height: 56.v,
                                              width: 35.h,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(top: 34.v)),
                                          _buildVector(),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 20.v,
                                              width: 14.h,
                                              alignment: Alignment.topRight,
                                              margin:
                                                  EdgeInsets.only(right: 69.h)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 31.v, right: 24.h),
                                              child: _buildUser()),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 23.v,
                                              width: 17.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 34.v, right: 24.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle20x20,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 32.v, right: 26.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUserGray60004,
                                              height: 25.adaptSize,
                                              width: 25.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 24.h, bottom: 31.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 23.v,
                                              width: 17.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 24.h, bottom: 34.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 12.v,
                                              width: 25.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 24.h, bottom: 31.v)),
                                          _buildVector(),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 20.v,
                                              width: 14.h,
                                              alignment: Alignment.bottomRight,
                                              margin:
                                                  EdgeInsets.only(right: 69.h)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: 25.adaptSize,
                                                  width: 25.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 24.h, bottom: 31.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgUserGray60004,
                                                            height:
                                                                25.adaptSize,
                                                            width: 25.adaptSize,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 25
                                                                    .adaptSize,
                                                                width: 25
                                                                    .adaptSize,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 23
                                                                              .v,
                                                                          width: 17
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.topLeft),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 12
                                                                              .v,
                                                                          width: 25
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.bottomCenter),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle24,
                                                                          height: 20
                                                                              .adaptSize,
                                                                          width: 20
                                                                              .adaptSize,
                                                                          alignment: Alignment
                                                                              .bottomLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 1.h))
                                                                    ])))
                                                      ]))),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 24.h, top: 31.v),
                                              child: _buildUser()),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle25,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 26.h, bottom: 32.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 23.v,
                                              width: 17.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 24.h, top: 34.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle26,
                                              height: 20.adaptSize,
                                              width: 20.adaptSize,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 26.h, top: 32.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup56x167,
                                              height: 56.v,
                                              width: 167.h,
                                              alignment: Alignment.topCenter,
                                              margin:
                                                  EdgeInsets.only(top: 34.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgVectorLightBlue700,
                                              height: 112.v,
                                              width: 97.h,
                                              alignment: Alignment.center),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgRectangle17x22,
                                              height: 17.v,
                                              width: 22.h,
                                              alignment: Alignment.topCenter,
                                              margin:
                                                  EdgeInsets.only(top: 2.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector30x48,
                                              height: 30.v,
                                              width: 48.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 35.h, top: 12.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector28x43,
                                              height: 28.v,
                                              width: 43.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 40.h, top: 17.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector13,
                                              height: 30.v,
                                              width: 48.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 12.v, right: 35.h)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 28.v,
                                                  width: 43.h,
                                                  margin: EdgeInsets.only(
                                                      top: 17.v, right: 40.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topRight,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVector30x48,
                                                            height: 28.v,
                                                            width: 43.h,
                                                            alignment: Alignment
                                                                .center),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 2.v,
                                                                    right:
                                                                        11.h),
                                                            child:
                                                                _buildTelevision())
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 40.h),
                                                  child: SizedBox(
                                                      height: 50.v,
                                                      child: VerticalDivider(
                                                          width: 4.h,
                                                          thickness: 4.v)))),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 35.h),
                                                  child: SizedBox(
                                                      height: 56.v,
                                                      child: VerticalDivider(
                                                          width: 4.h,
                                                          thickness: 4.v)))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 35.h),
                                                  child: SizedBox(
                                                      height: 56.v,
                                                      child: VerticalDivider(
                                                          width: 4.h,
                                                          thickness: 4.v)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle27,
                                              height: 17.v,
                                              width: 22.h,
                                              alignment: Alignment.bottomCenter,
                                              margin:
                                                  EdgeInsets.only(bottom: 2.v)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 40.h),
                                                  child: SizedBox(
                                                      height: 50.v,
                                                      child: VerticalDivider(
                                                          width: 4.h,
                                                          thickness: 4.v)))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector14,
                                              height: 28.v,
                                              width: 43.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  left: 40.h, bottom: 17.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector30x48,
                                              height: 30.v,
                                              width: 48.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  left: 35.h, bottom: 12.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector14,
                                              height: 28.v,
                                              width: 43.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 40.h, bottom: 17.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector30x48,
                                              height: 30.v,
                                              width: 48.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 35.h, bottom: 12.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 4.v),
                                              child: _buildSettings(
                                                  settings: ImageConstant
                                                      .imgTelevisionAmber70001)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 12.v,
                                              width: 8.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 4.v, right: 74.h)),
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 34.v, right: 28.h),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgTelevisionAmber70001,
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgVector3x2,
                                                            height: 7.v,
                                                            width: 15.h,
                                                            alignment: Alignment
                                                                .topCenter)
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 14.v,
                                              width: 11.h,
                                              alignment: Alignment.topRight,
                                              margin: EdgeInsets.only(
                                                  top: 36.v, right: 28.h)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrowUpTealA70001,
                                              height: 15.adaptSize,
                                              width: 15.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 28.h, bottom: 34.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 14.v,
                                              width: 11.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 28.h, bottom: 36.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 7.v,
                                              width: 15.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 28.h, bottom: 34.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 4.v),
                                              child: _buildSettings(
                                                  settings: ImageConstant
                                                      .imgSettingsBlue900)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 12.v,
                                              width: 8.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 74.h, bottom: 4.v)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 28.h, bottom: 34.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgArrowUpPurpleA70001,
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 14
                                                                              .v,
                                                                          width: 11
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.topLeft),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 7
                                                                              .v,
                                                                          width: 15
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.bottomCenter)
                                                                    ])))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height: 15.adaptSize,
                                                  width: 15.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 28.h, top: 34.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgTelevisionAmber70001,
                                                            height:
                                                                15.adaptSize,
                                                            width: 15.adaptSize,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 15
                                                                    .adaptSize,
                                                                width: 15
                                                                    .adaptSize,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomLeft,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 7
                                                                              .v,
                                                                          width: 15
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.topCenter),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 14
                                                                              .v,
                                                                          width: 11
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.bottomLeft)
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector25x60,
                                              height: 21.v,
                                              width: 39.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 58.h, top: 10.v)),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  height: 26.v,
                                                  width: 49.h,
                                                  margin: EdgeInsets.only(
                                                      left: 51.h, bottom: 9.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topLeft,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgVector25x60,
                                                            height: 26.v,
                                                            width: 49.h,
                                                            alignment: Alignment
                                                                .center),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                                height: 10.v,
                                                                width: 15.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 6
                                                                            .v),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVectorPurpleA700,
                                                                          height: 10
                                                                              .v,
                                                                          width: 15
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: SizedBox(
                                                                              height: 10.v,
                                                                              width: 15.h,
                                                                              child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 10.v, width: 11.h, alignment: Alignment.centerRight),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 10.adaptSize, width: 10.adaptSize, alignment: Alignment.centerLeft)
                                                                              ])))
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector25x60,
                                              height: 26.v,
                                              width: 24.h,
                                              alignment: Alignment.topLeft,
                                              margin: EdgeInsets.only(
                                                  left: 33.h, top: 32.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28.h),
                                              child: _buildTelevision1(
                                                  television: ImageConstant
                                                      .imgUserPurpleA400)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 51.h, top: 19.v),
                                              child: _buildTelevision()),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 8.v,
                                              width: 12.h,
                                              alignment: Alignment.bottomLeft,
                                              margin: EdgeInsets.only(
                                                  left: 28.h, bottom: 59.v)),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 28.h),
                                              child: _buildTelevision1(
                                                  television: ImageConstant
                                                      .imgTelevisionAmber70001)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseCyanA400,
                                              height: 10.v,
                                              width: 15.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 51.h, bottom: 19.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 8.v,
                                              width: 12.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 28.h, bottom: 59.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 10.v,
                                              width: 11.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 55.h, bottom: 19.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgVector3x2,
                                              height: 10.adaptSize,
                                              width: 10.adaptSize,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 51.h, bottom: 19.v)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgGroupIndigo500,
                                              height: 116.v,
                                              width: 10.h,
                                              alignment: Alignment.center),
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height: 62.adaptSize,
                                                  width: 62.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 34.v),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgSettingsGray50004,
                                                            height:
                                                                13.adaptSize,
                                                            width: 13.adaptSize,
                                                            alignment: Alignment
                                                                .centerRight,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    right:
                                                                        4.h)),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height: 62
                                                                    .adaptSize,
                                                                width: 62
                                                                    .adaptSize,
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    children: [
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.bottomCenter,
                                                                          child: Container(
                                                                              height: 52.v,
                                                                              width: 55.h,
                                                                              decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup838), fit: BoxFit.cover)),
                                                                              child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 13.v, width: 27.h, alignment: Alignment.centerLeft),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 11.v, width: 27.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 17.v)),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 29.v, width: 8.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 19.h)),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 29.v, width: 8.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(right: 19.h)),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 11.v, width: 27.h, alignment: Alignment.bottomRight, margin: EdgeInsets.only(bottom: 17.v)),
                                                                                CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 13.v, width: 27.h, alignment: Alignment.centerRight),
                                                                                Padding(padding: EdgeInsets.only(right: 10.h), child: _buildVector1()),
                                                                                Padding(padding: EdgeInsets.only(left: 10.h), child: _buildVector1())
                                                                              ]))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgRectangle58x60,
                                                                          height: 58
                                                                              .v,
                                                                          width: 60
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.bottomCenter),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 15
                                                                              .v,
                                                                          width: 31
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.centerLeft),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 13
                                                                              .v,
                                                                          width: 31
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin:
                                                                              EdgeInsets.only(top: 19.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 33
                                                                              .v,
                                                                          width: 9
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topLeft,
                                                                          margin:
                                                                              EdgeInsets.only(left: 21.h)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 33
                                                                              .v,
                                                                          width: 9
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              EdgeInsets.only(right: 21.h)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 13
                                                                              .v,
                                                                          width: 31
                                                                              .h,
                                                                          alignment: Alignment
                                                                              .topRight,
                                                                          margin:
                                                                              EdgeInsets.only(top: 19.v)),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector3x2,
                                                                          height: 15
                                                                              .v,
                                                                          width: 31
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.centerRight),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              right: 12.h,
                                                                              bottom: 2.v),
                                                                          child: _buildVector2()),
                                                                      Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 12.h,
                                                                              bottom: 2.v),
                                                                          child: _buildVector2()),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgVector59x62,
                                                                          height: 59
                                                                              .v,
                                                                          width: 62
                                                                              .h,
                                                                          alignment:
                                                                              Alignment.topCenter)
                                                                    ])))
                                                      ]))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgCloseBlack900,
                                              height: 28.v,
                                              width: 43.h,
                                              alignment: Alignment.bottomRight,
                                              margin: EdgeInsets.only(
                                                  right: 40.h, bottom: 17.v)),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  height: 59.v,
                                                  width: 100.h,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(
                                                              ImageConstant
                                                                  .imgGroup141),
                                                          fit: BoxFit.cover)),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgGroupOrange80002,
                                                      height: 59.v,
                                                      width: 100.h,
                                                      alignment:
                                                          Alignment.center)))
                                        ])),
                                SizedBox(height: 70.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 120.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle26x26,
                                          height: 26.adaptSize,
                                          width: 26.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 2.h, top: 3.v, bottom: 2.v),
                                          child: Text("lbl_1000000".tr,
                                              style:
                                                  CustomTextStyles.bodyLarge18))
                                    ]))
                              ])))
                ]))));
  }

  /// Common widget
  Widget _buildVIPCounter({
    required String vipCounterText,
    required String vIP,
  }) {
    return SizedBox(
        height: 15.v,
        width: 31.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Text(vipCounterText,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.topLeft,
              child: Text(vIP,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: appTheme.whiteA700)))
        ]));
  }

  /// Common widget
  Widget _buildVector() {
    return SizedBox(
        height: 20.v,
        width: 29.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray60004,
              height: 20.v,
              width: 29.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 20.v,
              width: 14.h,
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Common widget
  Widget _buildUser() {
    return SizedBox(
        height: 25.adaptSize,
        width: 25.adaptSize,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgUserGray60004,
              height: 25.adaptSize,
              width: 25.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 12.v,
              width: 25.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Common widget
  Widget _buildSettings({required String settings}) {
    return SizedBox(
        height: 12.v,
        width: 17.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: settings,
              height: 12.v,
              width: 17.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 12.v,
              width: 8.h,
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Common widget
  Widget _buildTelevision() {
    return SizedBox(
        height: 10.v,
        width: 15.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevisionAmber70001,
              height: 10.v,
              width: 15.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 10.v,
                  width: 15.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector3x2,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        alignment: Alignment.centerLeft),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector3x2,
                        height: 10.v,
                        width: 11.h,
                        alignment: Alignment.centerRight)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildTelevision1({required String television}) {
    return SizedBox(
        height: 17.v,
        width: 12.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: television,
              height: 17.v,
              width: 12.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 8.v,
              width: 12.h,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Common widget
  Widget _buildVector1() {
    return SizedBox(
        height: 23.v,
        width: 17.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 23.v,
              width: 17.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 23.v,
              width: 17.h,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildVector2() {
    return SizedBox(
        height: 26.v,
        width: 19.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 26.v,
              width: 19.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 26.v,
              width: 19.h,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
