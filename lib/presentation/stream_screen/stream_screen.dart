import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/multi_live_screen/multi_live_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/select_tag_dialog/select_tag_dialog.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_level_dialog/stream_level_dialog.dart';
import 'package:muhammad_zubair_s_application4/presentation/stream_screen/LiveStreaminPage.dart';

import '../audio_live_screen/audio_live_screen.dart';
import '../schedule_time_dialog/schedule_time_dialog.dart';
import 'controller/stream_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';

import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class StreamScreen extends StatefulWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  _StreamScreenState createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  final StreamController controller =
      StreamController(); // Adjust the controller creation

//
  @override
  Widget build(BuildContext context) {
    int currentIndex = controller.tabviewController.index;
    controller.tabviewController.addListener(() {
      currentIndex = controller.tabviewController.index;
      setState(() {});
    });

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.black900.withOpacity(0.3),
        appBar: _buildAppBar(),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          padding: EdgeInsets.only(
            top: 36.v,
            bottom: 68.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.black900.withOpacity(0.3),
            image: DecorationImage(
              image: AssetImage(
                currentIndex == 2
                    ? ImageConstant.imgRectangle89
                    : ImageConstant.imgGroup751,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                TabBar(
                  controller: controller.tabviewController,
                  indicatorColor: Colors.green, // Remove indicator
                  tabs: [
                    _buildTab("Live", 0,
                        currentIndex), // Customize your tab labels here
                    _buildTab("Audio Live", 1, currentIndex),
                    _buildTab("Multi Live", 2, currentIndex),
                  ],
                ),

                Expanded(
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      // Contents of the first tab
                      Column(
                        children: [
                          Spacer(),
                          Container(
                              margin: EdgeInsets.only(top: 30),
                              child: _buildStreamLevel()),
                        ],
                      ),

                      Container(child: AudioLiveScreen()),
                      // Contents of the second tab

                      // Contents of the third tab
                      MultiLiveScreen()
                    ],
                  ),
                ),
                // Spacer(),

                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 67.h),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Column(
                //         children: [
                //           Text(
                //             "lbl_live".tr,
                //             style: CustomTextStyles.labelLargeGreen70002,
                //           ),
                //           SizedBox(height: 2.v),
                //           Container(
                //             height: 2.v,
                //             width: 20.h,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(
                //                 1.h,
                //               ),
                //               gradient: LinearGradient(
                //                 begin: Alignment(1.03, 1.11),
                //                 end: Alignment(0.07, -0.41),
                //                 colors: [
                //                   appTheme.green70002,
                //                   theme.colorScheme.primary,
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       Spacer(
                //         flex: 50,
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(bottom: 4.v),
                //         child: Text(
                //           "lbl_audio_live".tr,
                //           style: CustomTextStyles.labelLarge13,
                //         ),
                //       ),
                //       Spacer(
                //         flex: 50,
                //       ),
                //       Padding(
                //         padding: EdgeInsets.only(bottom: 4.v),
                //         child: Text(
                //           "lbl_multi_live2".tr,
                //           style: CustomTextStyles.labelLarge13,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Spacer(),
                // _buildStreamLevel(),
                SizedBox(height: 21.v),
                CustomElevatedButton(
                  onPressed: (() {
                  LivePage(
                    isHost: true,
                    localUserID: UserID,
                     localUserName: "Test User",
                     roomID: "123",

                  );
                  }),
                  text: "lbl_start_streaming".tr,
                  margin: EdgeInsets.symmetric(horizontal: 28.h),
                  rightIcon: Container(
                    margin: EdgeInsets.only(left: 5.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUploadGray5001,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
                ),
                SizedBox(height: 40.v),
              ],
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
      actions: [
        Container(
          height: 13.adaptSize,
          width: 13.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 21.v,
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
  Widget _buildStreamLevel() {
    return Container(
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
            padding: EdgeInsets.only(right: 30.h),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ScheduleTimeDialog());
                      },
                    );
                  },
                  child: Container(
                    width: 120.h,
                    margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.gray70004,
                      borderRadius: BorderRadius.circular(
                          8.h), // You can adjust the border radius as needed
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Icon

                        // Hint text
                        Text(
                          "lbl_schedule_time".tr,
                          style: CustomTextStyles.labelLargeGray30003,
                        ),
                        Container(
                          width: 24.h,
                          height: 24.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdownGray30003,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                          ),
                        ),
                        // You can add additional widgets here if needed
                      ],
                    ),
                  ),
                ),
                 GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: StreamLevelDialog());
                },
              );
            },
            child: Container(
              width: 120.h,
              margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
              decoration: BoxDecoration(
                color: appTheme.gray70004,
                borderRadius: BorderRadius.circular(
                    8.h), // You can adjust the border radius as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon

                  // Hint text
                  Text(
                     "lbl_stream_level".tr,
                    style: CustomTextStyles.labelLargeGray30003,
                  ),
                  Container(
                    width: 24.h,
                    height: 24.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdownGray30003,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  // You can add additional widgets here if needed
                ],
              ),
            ),
          ),

                // CustomElevatedButton(
                //   height: 24.v,
                //   width: 120.h,
                //   text: "lbl_stream_level".tr,
                //   margin: EdgeInsets.only(left: 20.h),
                //   rightIcon: Container(
                //     margin: EdgeInsets.only(left: 2.h),
                //     child: CustomImageView(
                //       imagePath: ImageConstant.imgArrowdownWhiteA700,
                //       height: 16.adaptSize,
                //       width: 16.adaptSize,
                //     ),
                //   ),
                //   buttonStyle: CustomButtonStyles.fillGrayTL10,
                //   buttonTextStyle: theme.textTheme.labelLarge!,
                // ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Divider(
            color: appTheme.gray70004,
          ),
          SizedBox(height: 12.v),
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SelectTagDialog());
                },
              );
            },
            child: Container(
              width: 120.h,
              margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
              decoration: BoxDecoration(
                color: appTheme.gray70004,
                borderRadius: BorderRadius.circular(
                    8.h), // You can adjust the border radius as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon

                  // Hint text
                  Text(
                    "lbl_tag".tr,
                    style: CustomTextStyles.labelLargeGray30003,
                  ),
                  Container(
                    width: 24.h,
                    height: 24.h,
                    margin: EdgeInsets.only(left: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdownGray30003,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  // You can add additional widgets here if needed
                ],
              ),
            ),
          ),
          // CustomDropDown(
          //   width: 120.h,
          //   icon: Container(
          //     margin: EdgeInsets.fromLTRB(2.h, 4.v, 10.h, 4.v),
          //     child: CustomImageView(
          //       imagePath: ImageConstant.imgArrowdownWhiteA700,
          //       height: 16.adaptSize,
          //       width: 16.adaptSize,
          //     ),
          //   ),
          //   hintText: "lbl_tag".tr,
          //   items: controller.streamModelObj.value.dropdownItemList1!.value,
          //   borderDecoration: DropDownStyleHelper.fillBlueGray,
          //   fillColor: appTheme.blueGray70001,
          //   onChanged: (value) {
          //     controller.onSelected1(value);
          //   },
          // ),
        ],
      ),
    );
  }

  Widget _buildTab(String label, index, currentIdex) {
    return Tab(
      child: Text(
        label,
        style: index == currentIdex
            ? CustomTextStyles.labelLargeGreen70002
            : TextStyle(fontSize: 16), // Customize tab label style here
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(
          getCurrentRoute(type),
        );
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
      case BottomBarEnum.Connect:
        return AppRoutes.profilePage;
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
