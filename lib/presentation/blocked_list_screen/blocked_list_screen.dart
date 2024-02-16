import '../../widgets/custom_elevated_button.dart';
import '../blocked_list_screen/widgets/userprofile12_item_widget.dart';
import 'controller/blocked_list_controller.dart';
import 'models/userprofile12_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class BlockedListScreen extends StatefulWidget {
  const BlockedListScreen({Key? key}) : super(key: key);

  @override
  State<BlockedListScreen> createState() => _BlockedListScreenState();
}

class _BlockedListScreenState extends State<BlockedListScreen> {
  var controller = Get.put(BlockedListController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h),
                      child: Obx(() => ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 12.v);
                          },
                          itemCount: controller.blockedListModelObj.value
                              .userprofile12ItemList.value.length,
                          itemBuilder: (context, index) {
                            Userprofile12ItemModel model = controller
                                .blockedListModelObj
                                .value
                                .userprofile12ItemList
                                .value[index];
                            return Userprofile12ItemWidget(model);
                          }))),
                  Container(
                    // height: 400,
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: 10,
                        itemBuilder: ((context, index) {
                          return ListBlockList();
                        })),
                  ),
                ],
              ),
            )));
  }

  Container ListBlockList() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.gradientLightGreenAToAmbe2r.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlayBlueGray100,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 4.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.v,
                  width: 97.h,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Empire Bby",
                          style: CustomTextStyles.labelLargeGray80001SemiBold,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.v),
                SizedBox(
                  width: 111.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lorem test Text for Ui",
                        style: CustomTextStyles.bodySmallInterGray60011,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 25.v,
            width: 84.h,
            text: "lbl_remove".tr,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 14.h,
              bottom: 7.v,
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL10Decoration,
            buttonTextStyle: CustomTextStyles.labelMedium11,
          ),
        ],
      ),
    );
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
        title: Text("lbl_blocked_list2".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
