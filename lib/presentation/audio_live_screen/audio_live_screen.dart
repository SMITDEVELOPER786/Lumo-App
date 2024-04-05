import '../schedule_time_dialog/schedule_time_dialog.dart';
import '../select_tag_dialog/select_tag_dialog.dart';
import '../stream_level_dialog/stream_level_dialog.dart';
import 'controller/audio_live_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class AudioLiveScreen extends StatefulWidget {
  const AudioLiveScreen({Key? key}) : super(key: key);

  @override
  State<AudioLiveScreen> createState() => _AudioLiveScreenState();
}

class _AudioLiveScreenState extends State<AudioLiveScreen> {

  var controller = Get.put(AudioLiveController());
  @override
  Widget build(BuildContext context) {
    return
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
             SizedBox(height: 42.v),
           _buildFrame(),
           SizedBox(height: 12.v),
           Row(
             children: [
               CustomIconButton(
                 height: 36.adaptSize,
                 width: 36.adaptSize,
                 padding: EdgeInsets.all(10.h),
                 decoration: IconButtonStyleHelper.outlineWhiteA,
                 child: CustomImageView(
                   imagePath: ImageConstant.imgPlus,
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 12.h),
                 child: CustomIconButton(
                   height: 36.adaptSize,
                   width: 36.adaptSize,
                   padding: EdgeInsets.all(10.h),
                   decoration: IconButtonStyleHelper.outlineWhiteA,
                   child: CustomImageView(
                     imagePath: ImageConstant.imgPlus,
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 12.h),
                 child: CustomIconButton(
                   height: 36.adaptSize,
                   width: 36.adaptSize,
                   padding: EdgeInsets.all(10.h),
                   decoration: IconButtonStyleHelper.outlineWhiteA,
                   child: CustomImageView(
                     imagePath: ImageConstant.imgPlus,
                   ),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.only(left: 12.h),
                 child: CustomIconButton(
                   height: 36.adaptSize,
                   width: 36.adaptSize,
                   padding: EdgeInsets.all(10.h),
                   decoration: IconButtonStyleHelper.outlineWhiteA,
                   child: CustomImageView(
                     imagePath: ImageConstant.imgPlus,
                   ),
                 ),
               ),
             ],
           ),
           Spacer(),
           _buildStreamLevel(),
           SizedBox(height: 21.v),
          //  CustomElevatedButton(
          //    text: "lbl_start_streaming".tr,
          //    margin: EdgeInsets.symmetric(horizontal: 28.h),
          //    rightIcon: Container(
          //      margin: EdgeInsets.only(left: 5.h),
          //      child: CustomImageView(
          //        imagePath: ImageConstant.imgUploadGray5001,
          //        height: 16.adaptSize,
          //        width: 16.adaptSize,
          //      ),
          //    ),
          //    buttonStyle: CustomButtonStyles.none,
          //    decoration:
          //        CustomButtonStyles.gradientGreenToPrimaryTL241Decoration,
          //    alignment: Alignment.center,
          //  ),
          //  SizedBox(height: 33.v),
         ],
       
     
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
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(right: 29.h),
      child: Row(
        children: [
          CustomIconButton(
            height: 36.adaptSize,
            width: 36.adaptSize,
            padding: EdgeInsets.all(10.h),
            decoration: IconButtonStyleHelper.outlineWhiteA,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineWhiteA,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlus,
              ),
            ),
          ),
        ],
      ),
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
                      child:   Container(
                                width: 353.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 28.h, vertical: 38.v),
                                decoration: AppDecoration.fillLime.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseGray80003,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          alignment: Alignment.centerRight,
                                          margin: EdgeInsets.only(right: 4.h),
                                          onTap: () {
                                          Get.close(1);
                                          }),
                                      SizedBox(height: 8.v),
                                      Text("lbl_stream_level".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray80001SemiBold_1),
                                      SizedBox(height: 10.v),
                                      Text("msg_select_who_can_access".tr,
                                          style: CustomTextStyles
                                              .labelLargeGray50005),
                                      SizedBox(height: 26.v),
                    //                   DropdownButtonFormField<String>(
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Please select an option';
                    //     }
                    //     return null; // Return null if the value is valid
                    //   },
                    //   decoration: InputDecoration(
                    //       contentPadding: EdgeInsets.only(
                    //           left: 20.h, top: 17.v, bottom: 17.v),
                    //       filled: true,
                    //       fillColor: appTheme.lightGreen5004,
                    //       focusedBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(35),
                    //           borderSide: BorderSide(
                    //             color: Colors.white,
                    //           )),
                    //       enabledBorder: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(35),
                    //           borderSide: BorderSide(
                    //             color: Colors.white,
                    //           )),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(35),
                    //         borderSide: BorderSide(color: Colors.white),
                    //       )),
                    //   isExpanded: true,
                    //   borderRadius: BorderRadius.circular(25),
                    //   value: Streamcontroller.streamType.toString(),
                    //   hint: Text(
                    //     "lbl_select_gender".tr,
                    //     style: CustomTextStyles.titleSmallGray50006,
                    //   ),
                    //   items: Streamcontroller.streamlist.map((item) {
                    //     return DropdownMenuItem(
                    //       value: item,
                    //       child: Text(item),
                    //     );
                    //   }).toList(),
                    //   onChanged: (value) {
                    //     Streamcontroller.SelectStreamType(value);
                    //     // ignore: invalid_use_of_protected_member
                    //     // _formController.floorList.value;
                    //   },
                    // ),
                                    ])),
                      );
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
 case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
          case BottomBarEnum.Stream:
        return AppRoutes.streamScreen;
        
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
