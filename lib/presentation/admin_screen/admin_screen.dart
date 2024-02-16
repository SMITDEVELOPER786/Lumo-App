import '../admin_screen/widgets/allhosttextsection_item_widget.dart';
import 'controller/admin_controller.dart';
import 'models/allhosttextsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';


class AdminScreen extends StatefulWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  var controller = Get.put(AdminController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  child: Column(children: [
                    _buildPlaySection(),
                    SizedBox(height: 26.v),
                    Column(
                      children: [
                      _buildAllHostTextSection(),
                               CustomElevatedButton(
                            width: 297.h,
                            text: "lbl_start_streaming".tr,
                            margin: EdgeInsets.only(top: 184.v),
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 3.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgArrowdownWhiteA70016x16,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            buttonStyle: CustomButtonStyles.fillRed,
                           ),
                    ]),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 44.h,
        leading: 
        Icon(Icons.arrow_back_ios),     
        centerTitle: true,
        title: Text( "lbl_admin".tr));
  }

  /// Section Widget
  Widget _buildPlaySection() {
    return SizedBox(
        height: 85.v,
        width: 353.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle34624959,
              height: 85.v,
              width: 353.h,
              radius: BorderRadius.circular(10.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPlay36x36,
                        height: 45.adaptSize,
                        width: 45.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 8.h, top: 3.v, bottom: 3.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_sarah_wegan".tr,
                                  style: CustomTextStyles.titleMediumWhiteA700),
                              SizedBox(height: 1.v),
                              Text("lbl_admin".tr,
                                  style: CustomTextStyles.labelLargeGreenA100)
                            ]))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildAllHostTextSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 23.h, right: 23.h, ),
            child: Obx(() => GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent:80.v,
                    crossAxisCount: 3,
                    mainAxisSpacing: 11.h,
                    crossAxisSpacing: 11.h),
                physics: BouncingScrollPhysics(),
                itemCount: controller.adminModelObj.value
                    .allhosttextsectionItemList.value.length,
                itemBuilder: (context, index) {
                  AllhosttextsectionItemModel model = controller.adminModelObj
                      .value.allhosttextsectionItemList.value[index];
                  return AllhosttextsectionItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
