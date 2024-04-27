
import 'package:flutter/services.dart';
import 'package:muhammad_zubair_s_application4/presentation/multi_live_screen/multi_live_screen.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../audio_live_screen/audio_live_screen.dart';
import '../schedule_time_dialog/schedule_time_dialog.dart';
import 'controller/stream_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';


import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class StreamScreen extends StatefulWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  _StreamScreenState createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  final StreamController Streamcontroller =
      Get.put(StreamController()); // Adjust the controller creation
Position? _currentPosition;
  late double latitude;
  late double longitude;
  String? currentAddress;

Future<void> _getCurrentPosition() async {
  try {
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentPosition = position;
      latitude = _currentPosition!.latitude;
      longitude = _currentPosition!.longitude;
    });
    _getAddressFromLatLng(_currentPosition!);
  } catch (e) {
    debugPrint("Error getting current position: $e");
  }
}

Future<void> _getAddressFromLatLng(Position position) async {
  try {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = placemarks[0];
    setState(() {
      currentAddress = '${place.country}';
    });
  } catch (e) {
    debugPrint("Error getting address from coordinates: $e");
    if (e.runtimeType == PlatformException) {
      PlatformException platformException = e as PlatformException;
      debugPrint(
          "PlatformException: ${platformException.code} - ${platformException.message}");
    }
    setState(() {
      currentAddress = "Address not available";
    });
  }
}


  @override
   void initState() {
    super.initState();
    _getCurrentPosition();
  
  }
//
  @override
  Widget build(BuildContext context) {
    int currentIndex = Streamcontroller.tabviewController.index;
    Streamcontroller.tabviewController.addListener(() {
      currentIndex = Streamcontroller.tabviewController.index;
      setState(() {});
    });

    return SafeArea(
      child: GetBuilder(
        init: Streamcontroller,
        builder: ((controller) {
          return Scaffold(
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
                      controller: Streamcontroller.tabviewController,
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
                        controller: Streamcontroller.tabviewController,
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
                        var streamingdata = {
                          "title": Streamcontroller.titlecontroller.value.text.toLowerCase(),
                          "streamLevel": Streamcontroller.streamType.value.toLowerCase(),
                          "tags": Streamcontroller.selectedTagNames,
                          "scheduleTime" : DateTime.now().toString(),
                          "country": currentAddress.toString().toLowerCase(),

                        };
                        print(streamingdata);
                        Streamcontroller.LiveStreamingAPI( context, streamingdata);
                        // Get.to(LiveStreamingPage(liveID: "123"));
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
                      decoration: CustomButtonStyles
                          .gradientGreenToPrimaryTL241Decoration,
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
          );
        }),
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
                    Streamcontroller.imageFile.value == null
                        ? CustomImageView(
                            imagePath: ImageConstant.imgEllipse23,
                            height: 51.adaptSize,
                            width: 51.adaptSize,
                            radius: BorderRadius.circular(
                              25.h,
                            ),
                            alignment: Alignment.center,
                          )
                        : Container(
                            height: 51.adaptSize,
                            width: 51.adaptSize,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: FileImage(
                                        Streamcontroller.imageFile.value!))),
                          ),
                    CustomImageView(
                      onTap: () {
                        _getCurrentPosition();
                        Streamcontroller.pickImageFromGallery();
                      },
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
                    Container(
                      width: 200,
                      child: TextFormField(
                        
                        controller: Streamcontroller.titlecontroller,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            hintText: "Add Title",
                            hintStyle: TextStyle(color: Colors.white)),
                      ),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon

                        // Hint text
                        Text(
                          "Now".tr,
                          style: CustomTextStyles.labelLargeGray30003,
                        ),
                        // Container(
                        //   width: 24.h,
                        //   height: 24.h,
                        //   margin: EdgeInsets.only(left: 8.h),
                        //   child: CustomImageView(
                        //     imagePath: ImageConstant.imgArrowdownGray30003,
                        //     height: 16.adaptSize,
                        //     width: 16.adaptSize,
                        //   ),
                        // ),
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
                            child: Container(
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
                                      DropdownButtonFormField<String>(
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select an option';
                                          }
                                          return null; // Return null if the value is valid
                                        },
                                        decoration: InputDecoration(
                                            contentPadding: EdgeInsets.only(
                                                left: 20.h,
                                                top: 17.v,
                                                bottom: 17.v),
                                            filled: true,
                                            fillColor: appTheme.lightGreen5004,
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                )),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                )),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(35),
                                              borderSide: BorderSide(
                                                  color: Colors.white),
                                            )),
                                        isExpanded: true,
                                        borderRadius: BorderRadius.circular(25),
                                        value: Streamcontroller.streamType
                                            .toString(),
                                        hint: Text(
                                          "lbl_select_gender".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray50006,
                                        ),
                                        items: Streamcontroller.streamlist
                                            .map((item) {
                                          return DropdownMenuItem(
                                            value: item,
                                            child: Text(item),
                                          );
                                        }).toList(),
                                        onChanged: (value) {
                                          Streamcontroller.SelectStreamType(
                                              value);
                                          // ignore: invalid_use_of_protected_member
                                          // _formController.floorList.value;
                                        },
                                      ),
                                    ])));
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                            width: 15.h,
                            height: 15.h,
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
                      child: StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
                        return Container(
                            width: 353.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 23.h, vertical: 27.v),
                            decoration: AppDecoration.fillLime.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 8.h, right: 16.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 15.v),
                                                        child:
                                                            Column(children: [
                                                          Text(
                                                              "lbl_select_tag"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleSmallGray80003SemiBold),
                                                          SizedBox(height: 7.v),
                                                          SizedBox(
                                                              width: 266.h,
                                                              child: Text(
                                                                  "msg_select_your_preferred"
                                                                      .tr,
                                                                  maxLines: 2,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .labelLargeGray50012
                                                                      .copyWith(
                                                                          height:
                                                                              1.17)))
                                                        ]))),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgCloseGray80003,
                                                    height: 16.adaptSize,
                                                    width: 16.adaptSize,
                                                    margin: EdgeInsets.only(
                                                        bottom: 55.v),
                                                    onTap: () {
                                                      Get.close(1);
                                                    })
                                              ]))),
                                  SizedBox(height: 28.v),
                                  Wrap(
                                    spacing:
                                        2.0, // Adjust the spacing between chips
                                    runSpacing: 2.0,
                                    children: List.generate(
                                      Streamcontroller.tags.length,
                                      (index) => Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
                                        child: GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                Streamcontroller
                                                    .toggleTagSelection(index);
                                              });
                                            },
                                            child: Container(
                                              height: 20,
                                              color: Streamcontroller
                                                      .selectedTags[index]
                                                  ? Colors.blue
                                                  : Colors.grey,
                                              child: Text(
                                                Streamcontroller.tags[index],
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            )),
                                      ),
                                    ),
                                  ),
                                ]));
                      }));
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
