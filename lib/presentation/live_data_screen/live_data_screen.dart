import 'controller/live_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';


class LiveDataScreen extends StatefulWidget {
  const LiveDataScreen({Key? key}) : super(key: key);

  @override
  State<LiveDataScreen> createState() => _LiveDataScreenState();
}

class _LiveDataScreenState extends State<LiveDataScreen> {

  var controller = Get.put(LiveDataController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 28.v),
                child: Column(children: [
                  _buildFrame(),
                  SizedBox(height: 33.v),
                  _buildPngeggFiftyOne(),
                  SizedBox(height: 23.v),
                  Divider(color: appTheme.gray100, indent: 8.h, endIndent: 8.h),
                  SizedBox(height: 6.v),
                  _buildNineHundred(),
                  SizedBox(height: 26.v),
                  _buildFrame1(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 44.h,
        leading: GestureDetector(
          onTap: (){
          onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text( "lbl_live_data".tr));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.green70002,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Container(
            height: 133.v,
            width: 353.h,
            decoration: AppDecoration.fillGreen70002
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: IntrinsicWidth(
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Container(
                                  height: 133.v,
                                  width: 353.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 498.v,
                                                width: 507.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            249.h)))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 456.v,
                                                width: 464.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            228.h)))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 426.v,
                                                width: 436.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            213.h)))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: SizedBox(
                                                height: 501.v,
                                                width: 464.h,
                                                child:
                                                    CircularProgressIndicator(
                                                        value: 0.5,
                                                        backgroundColor:
                                                            appTheme.green700,
                                                        color: appTheme
                                                            .green700))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 465.v,
                                                width: 450.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            232.h)))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 623.v,
                                                width: 580.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            322.h)))),
                                        Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Container(
                                                height: 563.v,
                                                width: 521.h,
                                                decoration: BoxDecoration(
                                                    color: appTheme.green700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            281.h))))
                                      ])))))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 51.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("lbl_june_data".tr,
                                  style: CustomTextStyles.bodyMediumWhiteA700),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorWhiteA7004x9,
                                  height: 4.v,
                                  width: 9.h,
                                  margin: EdgeInsets.only(
                                      left: 5.h, top: 7.v, bottom: 4.v))
                            ]),
                        SizedBox(height: 13.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(children: [
                                Text("lbl_0".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 1.v),
                                Text("lbl_live_minutes".tr,
                                    style:
                                        CustomTextStyles.bodySmallInterGreen200)
                              ]),
                              Column(children: [
                                Text("lbl_5".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 1.v),
                                Text("lbl_new_fans".tr,
                                    style:
                                        CustomTextStyles.bodySmallInterGreen200)
                              ]),
                              Column(children: [
                                Text("lbl_10k".tr,
                                    style: theme.textTheme.headlineSmall),
                                SizedBox(height: 1.v),
                                Text("lbl_new_diamonds".tr,
                                    style:
                                        CustomTextStyles.bodySmallInterGreen200)
                              ])
                            ])
                      ])))
            ])));
  }

  /// Section Widget
  Widget _buildPngeggFiftyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h, right: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPngegg51,
                      height: 21.v,
                      width: 27.h,
                      margin: EdgeInsets.only(top: 3.v, bottom: 7.v)),
                  Text("lbl_5_987_34".tr,
                      style: CustomTextStyles.headlineSmallGray80003)
                ]),
                SizedBox(height: 4.v),
                Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text("lbl_june".tr,
                        style: CustomTextStyles.bodySmallInterGray600))
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 16.v),
                  child: CustomIconButton(
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup2019)))
            ]));
  }

  /// Section Widget
  Widget _buildNineHundred() {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 13.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_900".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_800".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_700".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_600".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_500".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_400".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_300".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_200".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003)),
                        SizedBox(height: 10.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text("lbl_1002".tr,
                                style:
                                    CustomTextStyles.bodySmallInterGray80003))
                      ])),
              CustomImageView(
                  imagePath: ImageConstant.imgGroup2046,
                  height: 194.v,
                  width: 327.h,
                  margin: EdgeInsets.only(left: 3.h))
            ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 11.v),
              decoration: AppDecoration.outlineGray30001
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Container(
                    width: 140.h,
                    margin: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_earnings".tr,
                                    style:
                                        CustomTextStyles.labelSmallGray60003),
                                SizedBox(height: 1.v),
                                Text("lbl_5_987_342".tr,
                                    style: CustomTextStyles.labelLargeBlack900),
                                Text("msg_last_four_months".tr,
                                    style: CustomTextStyles.interGray80005)
                              ]),
                          Container(
                              height: 11.adaptSize,
                              width: 11.adaptSize,
                              margin: EdgeInsets.only(bottom: 23.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 4.h, vertical: 1.v),
                              decoration: AppDecoration.fillGray40006.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder5),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup5,
                                  height: 7.v,
                                  width: 1.h,
                                  alignment: Alignment.center))
                        ])),
                SizedBox(height: 5.v),
                SizedBox(width: 172.h, child: Divider(color: appTheme.gray200)),
                SizedBox(height: 9.v),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("lbl_2500k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_2250k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_2000k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_1750k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_1500k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 1.v),
                                Text("lbl_1250k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_1000k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 1.v),
                                Text("lbl_750k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_500k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 2.v),
                                Text("lbl_250k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular),
                                SizedBox(height: 1.v),
                                Text("lbl_0k".tr,
                                    style:
                                        CustomTextStyles.interGray80005Regular)
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 2.h, top: 4.v),
                          child: Column(children: [
                            Container(
                                width: 125.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            fs.Svg(ImageConstant.imgGroup990),
                                        fit: BoxFit.cover)),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                          height: 22.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(top: 49.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.green60001)),
                                      Container(
                                          height: 34.v,
                                          width: 10.h,
                                          margin: EdgeInsets.only(top: 37.v),
                                          decoration: BoxDecoration(
                                              color: appTheme.green60001)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 32.v),
                                          child: CustomTextFormField(
                                              width: 10.h,
                                              controller:
                                                  controller.editTextController,
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillGreen,
                                              fillColor: appTheme.green60001)),
                                      Padding(
                                          padding: EdgeInsets.only(top: 35.v),
                                          child: CustomTextFormField(
                                              width: 10.h,
                                              controller: controller
                                                  .editTextController1,
                                              textInputAction:
                                                  TextInputAction.done,
                                              borderDecoration:
                                                  TextFormFieldStyleHelper
                                                      .fillGreen,
                                              fillColor: appTheme.green60001))
                                    ])),
                            SizedBox(height: 1.v),
                            Container(
                                width: 104.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("lbl_jan".tr,
                                          style: CustomTextStyles
                                              .interGray80005Regular),
                                      Text("lbl_feb".tr,
                                          style: CustomTextStyles
                                              .interGray80005Regular),
                                      Text("lbl_mar".tr,
                                          style: CustomTextStyles
                                              .interGray80005Regular),
                                      Text("lbl_apr".tr,
                                          style: CustomTextStyles
                                              .interGray80005Regular)
                                    ]))
                          ]))
                    ]),
                SizedBox(height: 14.v)
              ])),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.v),
              decoration: AppDecoration.outlineGray300011
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                SizedBox(
                    width: 139.h,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("lbl_stats".tr,
                              style: CustomTextStyles.labelSmallGray90005),
                          CustomDropDown(
                              width: 70.h,
                              hintText: "lbl_2023".tr,
                              hintStyle: CustomTextStyles.interGray80003,
                              items: controller.liveDataModelObj.value
                                  .dropdownItemList!.value,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 5.h, vertical: 3.v),
                              onChanged: (value) {
                                controller.onSelected(value);
                              })
                        ])),
                SizedBox(height: 8.v),
                _buildPrice(
                    priceText: "lbl_120_923".tr,
                    totalEarned: "msg_successful_transactions".tr),
                SizedBox(height: 7.v),
                _buildPrice(
                    priceText: "lbl_467_573".tr,
                    totalEarned: "lbl_total_earned".tr),
                SizedBox(height: 7.v)
              ]))
        ]));
  }

  /// Common widget
  Widget _buildPrice({
    required String priceText,
    required String totalEarned,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 37.h, vertical: 8.v),
        decoration: AppDecoration.fillLime100
            .copyWith(borderRadius: BorderRadiusStyle.circleBorder1),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text(priceText,
                  style: CustomTextStyles.titleSmallGray8000314
                      .copyWith(color: appTheme.gray80003)),
              SizedBox(height: 6.v),
              Text(totalEarned,
                  style: CustomTextStyles.interGray80003Regular
                      .copyWith(color: appTheme.gray80003))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
