import '../mall_screen/widgets/chatbubbles_item_widget.dart';
import '../mall_screen/widgets/viewhierarchy1_item_widget.dart';
import 'controller/mall_controller.dart';
import 'models/chatbubbles_item_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MallScreen extends StatefulWidget {
  const MallScreen({Key? key}) : super(key: key);

  @override
  State<MallScreen> createState() => _MallScreenState();
}

class _MallScreenState extends State<MallScreen> {
  var controller = Get.put(MallController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 16.v),
        _buildSmall(),
        SizedBox(height: 21.v),
        _buildChatBubbles(),
        SizedBox(height: 36.v),
        _buildViewHierarchy(),
        SizedBox(height: 39.v),
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
        // AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
        //     onTap: () {
        //
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
                    .mallModelObj.value.chatbubblesItemList.value.length,
                itemBuilder: (context, index) {
                  ChatbubblesItemModel model = controller
                      .mallModelObj.value.chatbubblesItemList.value[index];
                  return ChatbubblesItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 16.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 137.v,
                crossAxisCount: 2,
                mainAxisSpacing: 9.h,
                crossAxisSpacing: 9.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              Viewhierarchy1ItemModel model = controller
                  .mallModelObj.value.viewhierarchy1ItemList.value[0];
              return Viewhierarchy1ItemWidget(model);
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
                  buttonStyle: CustomButtonStyles.outlineTL17,
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
