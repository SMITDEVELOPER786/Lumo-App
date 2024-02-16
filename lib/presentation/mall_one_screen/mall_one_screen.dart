import '../mall_one_screen/widgets/chatbubbles1_item_widget.dart';
import '../mall_one_screen/widgets/userprofile9_item_widget.dart';
import '../mall_screen/mall_screen.dart';
import 'controller/mall_one_controller.dart';
import 'models/chatbubbles1_item_model.dart';
import 'models/userprofile9_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MallOneScreen extends StatefulWidget {
  const MallOneScreen({Key? key}) : super(key: key);

  @override
  State<MallOneScreen> createState() => _MallOneScreenState();
}

class _MallOneScreenState extends State<MallOneScreen> {
  var controller = Get.put(MallOneController());
  var i = 0;

  @override
  void initState() {
    super.initState();
  }

  setTab(val) {
    setState(() {
      i = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 9.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Row(
                                    children: [
                                    // GestureDetector(
                                    //   onTap: () {
                                    //     setTab(0);
                                    //   },
                                    //   child: Column(
                                    //     children: [
                                    //       Padding(
                                    //           padding:
                                    //               EdgeInsets.only(bottom: 4.v),
                                    //           child: Text(
                                    //             "lbl_my_gallery".tr,
                                    //             style: i == 0
                                    //                 ? TextStyle(
                                    //                     color:
                                    //                         appTheme.green80005,
                                    //                     fontSize: 15.fSize,
                                    //                     fontWeight:
                                    //                         FontWeight.w700,
                                    //                   )
                                    //                 : TextStyle(
                                    //                     color: appTheme.gray50010,
                                    //                     fontSize: 15.fSize,
                                    //                     fontWeight:
                                    //                         FontWeight.w700,
                                    //                   ),
                                    //           )),
                                    //     ],
                                    //   ),
                                    // ),
                                    GestureDetector(
                                      onTap: () {
                                        setTab(0);
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.only(left: 16.h),
                                          child: Column(children: [
                                            Text("lbl_mall".tr,
                                                style: i == 0
                                                    ? TextStyle(
                                                        color:
                                                            appTheme.green80005,
                                                        fontSize: 15.fSize,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      )
                                                    : TextStyle(
                                                        color: appTheme.gray50010,
                                                        fontSize: 15.fSize,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),),

                                            // SizedBox(height: 3.v),
                                            // i == 1 ?
                                            // Container(
                                            //   margin: EdgeInsets.all(5),
                                            //     height: 2.v,
                                            //     width: 50.h,
                                            //     decoration: BoxDecoration(
                                            //         color: appTheme.green80005,
                                            //         borderRadius:
                                            //             BorderRadius.circular(
                                            //                 1.h)))
                                            //                 :Container()
                                          ])),
                                    )
                                  ]))),
                           MallScreen(),
                        ]))))));
  }

  Column MallTab() {
    return Column(
      children: [
        SizedBox(height: 14.v),
        _buildSmall(),
        SizedBox(height: 20.v),
        _buildChatBubbles(),
        SizedBox(height: 38.v),
        _buildUserProfile(),
        SizedBox(height: 19.v),
        _buildFrame()
      ],
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: GestureDetector(
            onTap: () {
              onTapArrowLeft();
            },
            child: Icon(Icons.arrow_back_ios)),
        //  AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_mall".tr));
  }

  /// Section Widget
  Widget _buildSmall() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: AppDecoration.outlineIndigoF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgSmall), fit: BoxFit.cover)),
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Container(
                height: 154.v,
                width: 353.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 138, 10),
                    borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgNoise,
                      height: 154.v,
                      width: 353.h,
                      radius: BorderRadius.circular(12.h),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 73.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl_my_diamonds".tr,
                                style: CustomTextStyles.labelLargeGreenA10001),
                            SizedBox(height: 5.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 57.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPngegg51,
                                          height: 26.v,
                                          width: 34.h,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 5.v)),
                                      Text("lbl_20".tr,
                                          style: theme.textTheme.headlineLarge)
                                    ]))),
                            SizedBox(height: 16.v),
                            CustomElevatedButton(
                                height: 36.v,
                                text: "lbl_recharge".tr,
                                buttonStyle: CustomButtonStyles.fillWhiteA,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeGray80001)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildChatBubbles() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 90.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 20.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8.h);
                },
                itemCount: controller
                    .mallOneModelObj.value.chatbubbles1ItemList.value.length,
                itemBuilder: (context, index) {
                  Chatbubbles1ItemModel model = controller
                      .mallOneModelObj.value.chatbubbles1ItemList.value[index];
                  return Chatbubbles1ItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 104.v,
                crossAxisCount: 2,
                mainAxisSpacing: 15.h,
                crossAxisSpacing: 15.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              Userprofile9ItemModel model = controller
                  .mallOneModelObj.value.userprofile9ItemList.value[0];
              return Userprofile9ItemWidget(model);
            }));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlineGradientButton(
              padding:
                  EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                  begin: Alignment(1.03, 1.11),
                  end: Alignment(0.07, -0.41),
                  colors: [appTheme.green70002, theme.colorScheme.primary]),
              corners: Corners(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17),
                  bottomLeft: Radius.circular(17),
                  bottomRight: Radius.circular(17)),
              child: CustomOutlinedButton(
                  height: 40.v,
                  width: 159.h,
                  text: "lbl_send".tr,
                  buttonStyle: CustomButtonStyles.outlineTL171,
                  buttonTextStyle:
                      CustomTextStyles.titleSmallGray80001SemiBold)),
          CustomElevatedButton(
              height: 40.v,
              width: 159.h,
              text: "lbl_buy".tr,
              margin: EdgeInsets.only(left: 16.h),
              buttonStyle: CustomButtonStyles.none,
              decoration:
                  CustomButtonStyles.gradientGreenToPrimaryTL17Decoration,
              buttonTextStyle: CustomTextStyles.titleSmallSemiBold14)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
