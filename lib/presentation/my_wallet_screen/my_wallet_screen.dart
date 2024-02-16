import '../my_wallet_screen/widgets/userprofile7_item_widget.dart';
import '../my_wallet_screen/widgets/userprofile8_item_widget.dart';
import 'controller/my_wallet_controller.dart';
import 'models/userprofile7_item_model.dart';
import 'models/userprofile8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class MyWalletScreen extends StatefulWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  State<MyWalletScreen> createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  var controller= Get.put(MyWalletController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 21.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSmall(),
                          SizedBox(height: 22.v),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text("msg_purchase_from_coin".tr,
                                  style:
                                      CustomTextStyles.labelLargeGray8000113)),
                          SizedBox(height: 10.v),
                          _buildUserProfile(),
                          SizedBox(height: 20.v),
                          Padding(
                              padding: EdgeInsets.only(left: 19.h),
                              child: Text("lbl_top_up".tr,
                                  style:
                                      CustomTextStyles.labelLargeGray8000113)),
                          SizedBox(height: 9.v),
                          _buildUserProfile1()
                        ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: 
        GestureDetector(
          onTap: (){
onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios)),
    
        centerTitle: true,
        title: Text("lbl_my_wallet".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCalendarBlueGray900,
              margin: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v))
        ]);
  }

  /// Section Widget
  Widget _buildSmall() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 19.h),
            decoration: AppDecoration.outlineIndigoF.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
                image: DecorationImage(
                    image: AssetImage(ImageConstant.imgSmall),
                    fit: BoxFit.cover)),
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
                      color:       Color.fromARGB(255, 6, 138, 10),   // Transition to green at the bottom

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
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("lbl_my_diamonds".tr,
                                        style: CustomTextStyles
                                            .labelLargeGreenA10001),
                                    SizedBox(height: 5.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 57.h),
                                            child: Row(children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgPngegg51,
                                                  height: 26.v,
                                                  width: 34.h,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 5.v)),
                                              Text("lbl_20".tr,
                                                  style: theme
                                                      .textTheme.headlineLarge)
                                            ]))),
                                    SizedBox(height: 16.v),
                                    CustomElevatedButton(
                                        height: 36.v,
                                        text: "lbl_recharge".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillWhiteA,
                                        buttonTextStyle: CustomTextStyles
                                            .labelLargeGray80001)
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
        height: 74.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(left: 19.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 8.h);
            },
            itemCount: controller
                .myWalletModelObj.value.userprofile7ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofile7ItemModel model = controller
                  .myWalletModelObj.value.userprofile7ItemList.value[index];
              return Userprofile7ItemWidget(model);
            })));
  }

  /// Section Widget
  Widget _buildUserProfile1() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.h),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 137.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 9.h,
                    crossAxisSpacing: 9.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller
                    .myWalletModelObj.value.userprofile8ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile8ItemModel model = controller
                      .myWalletModelObj.value.userprofile8ItemList.value[index];
                  return Userprofile8ItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
