import '../multi_live_screen/widgets/multilive_item_widget.dart';
import 'controller/multi_live_controller.dart';
import 'models/multilive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MultiLiveScreen extends GetWidget<MultiLiveController> {
  const MultiLiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black900D8,
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(
            top: 24.v,
            bottom: 68.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.black900D8,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup747,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Container(
              height: 748.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 31.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle89,
                    height: 570.v,
                    width: 393.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: AppDecoration.fillBlack9001,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 85.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.v),
                                  child: Text(
                                    "lbl_live".tr,
                                    style: CustomTextStyles.labelLarge13,
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 4.v),
                                  child: Text(
                                    "lbl_audio_live2".tr,
                                    style: CustomTextStyles.labelLarge13,
                                  ),
                                ),
                                Spacer(
                                  flex: 50,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "lbl_multi_live2".tr,
                                      style: CustomTextStyles
                                          .labelLargeGreen70002SemiBold,
                                    ),
                                    SizedBox(height: 2.v),
                                    Container(
                                      height: 2.v,
                                      width: 20.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          1.h,
                                        ),
                                        gradient: LinearGradient(
                                          begin: Alignment(1.03, 1.11),
                                          end: Alignment(0.07, -0.41),
                                          colors: [
                                            appTheme.green70002,
                                            theme.colorScheme.primary,
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 232.v),
                          _buildVuesaxLinearCamera(),
                          SizedBox(height: 8.v),
                          _buildMultiLive(),
                          SizedBox(height: 105.v),
                          CustomElevatedButton(
                            text: "lbl_start_streaming".tr,
                            margin: EdgeInsets.symmetric(horizontal: 20.h),
                            rightIcon: Container(
                              margin: EdgeInsets.only(left: 2.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgUploadGray5001,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                            ),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientGreenToPrimaryTL255Decoration,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      actions: [
        Container(
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 5.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                height: 13.adaptSize,
                width: 13.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVuesaxLinearCamera() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Row(
            children: [
              Container(
                height: 52.v,
                width: 51.h,
                margin: EdgeInsets.symmetric(vertical: 3.v),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEllipse23,
                      height: 51.adaptSize,
                      width: 51.adaptSize,
                      radius: BorderRadius.circular(
                        25.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVuesaxLinearCamera,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.bottomRight,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: SizedBox(
                  height: 59.v,
                  child: VerticalDivider(
                    width: 1.h,
                    thickness: 1.v,
                    color: appTheme.gray70001,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 7.h,
                  top: 1.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_add_title".tr,
                      style: CustomTextStyles.labelLargeGray50011,
                    ),
                    SizedBox(height: 16.v),
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(3.h),
                      decoration: IconButtonStyleHelper.fillGrayTL12,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgTelevisionWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: appTheme.gray80003,
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 80.h),
            child: Row(
              children: [
                CustomDropDown(
                  width: 120.h,
                  icon: Container(
                    margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdownGray30003,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  hintText: "lbl_schedule_time".tr,
                  hintStyle: CustomTextStyles.labelLargeGray30003,
                  items: controller
                      .multiLiveModelObj.value.dropdownItemList!.value,
                  borderDecoration: DropDownStyleHelper.fillGray,
                  fillColor: appTheme.gray70004,
                  onChanged: (value) {
                    controller.onSelected(value);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: CustomDropDown(
                    width: 109.h,
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdownWhiteA700,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                      ),
                    ),
                    hintText: "lbl_stream_level".tr,
                    items: controller
                        .multiLiveModelObj.value.dropdownItemList1!.value,
                    borderDecoration: DropDownStyleHelper.fillGray,
                    fillColor: appTheme.gray70004,
                    onChanged: (value) {
                      controller.onSelected1(value);
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            color: appTheme.gray70004,
          ),
          SizedBox(height: 12.v),
          CustomDropDown(
            width: 60.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdownWhiteA700,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
            ),
            hintText: "lbl_tag".tr,
            items: controller.multiLiveModelObj.value.dropdownItemList2!.value,
            borderDecoration: DropDownStyleHelper.fillBlueGray,
            fillColor: appTheme.blueGray70001,
            onChanged: (value) {
              controller.onSelected2(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMultiLive() {
    return Container(
      height: 100.v,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL5,
      ),
      child: Obx(
        () => ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 10.h,
            );
          },
          itemCount:
              controller.multiLiveModelObj.value.multiliveItemList.value.length,
          itemBuilder: (context, index) {
            MultiliveItemModel model = controller
                .multiLiveModelObj.value.multiliveItemList.value[index];
            return MultiliveItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type),);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
        case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;

      case BottomBarEnum.Chat:
      return AppRoutes.messagesTabContainerScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageTabContainerPage:
        return HomepageTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
