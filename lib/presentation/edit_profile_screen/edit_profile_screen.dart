import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

import 'controller/edit_profile_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  var imagelink;
  var controller = Get.put(EditProfileController());
  // final UserDetails = Get.put(UserController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    controller.setinTemp();
    // UserController.user.data!.profileId!.username = controller.getTextController("Name").text;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: GetBuilder<EditProfileController>(builder: (controller) {
        return Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19.h),
              child: Column(
                children: [
                  controller.isImageUrl(controller.tempProfileImage.value)
                      ? Container(
                          height: 178.v,
                          width: 353.h,
                          decoration: BoxDecoration(
                            image: controller.tempProfileImage.isNotEmpty
                                ? DecorationImage(
                                    image: NetworkImage(
                                        "https://res.cloudinary.com/dk3hy0n39/image/upload/${controller.tempProfileImage}"),
                                    fit: BoxFit.fill)
                                : DecorationImage(
                                    image: AssetImage(
                                        "assets/img_user_41x91.png")),
                            borderRadius: BorderRadius.circular(10),

                            // color: Colors.amber
                          ),
                        )
                      : Container(
                          height: 178.v,
                          width: 353.h,
                          decoration: BoxDecoration(
                            image: controller.imageFile.value != null
                                ? DecorationImage(
                                    image:
                                        FileImage(controller.imageFile.value!))
                                : DecorationImage(
                                    image: NetworkImage(
                                        "https://res.cloudinary.com/dk3hy0n39/image/upload/${controller.tempProfileImage}"),
                                    fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),

                            // color: Colors.amber
                          ),
                        ),
                  SizedBox(height: 14.v),
                  GestureDetector(
                    onTap: () {
                      if (controller.tempProfileImage.isNotEmpty) {
                        controller.removeProfileImage();
                      } else {
                        controller.pickImageFromGallery();
                      }
                    },
                    child: DottedBorder(
                      color: appTheme.gray50010,
                      padding: EdgeInsets.only(
                          left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
                      strokeWidth: 1.h,
                      radius: Radius.circular(5),
                      borderType: BorderType.RRect,
                      dashPattern: [5, 5],
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 163.h, vertical: 16.v),
                        decoration: AppDecoration.outlineGray50010.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Icon(
                          controller.tempProfileImage.isEmpty
                              ? Icons.upload
                              : Icons.cancel_sharp,
                          color: Colors.black,
                          size: 25,
                          // child: CustomImageView(
                          //     imagePath:
                          //         ? ImageConstant.imgUpload
                          //         : ImageConstant.imgCloseGray80003,
                          //     height: 24.adaptSize,
                          //     width: 24.adaptSize),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 16.v),
                      decoration: AppDecoration.fillLightgreen5005.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("msg_personal_information".tr,
                                    style: CustomTextStyles
                                        .titleSmallGray80001SemiBold)),
                            SizedBox(height: 19.v),
                            // Padding(
                            //     padding: EdgeInsets.only(left: 4.h),
                            //     child: CustomTextFormField(
                            //         controller:
                            //             controller.nameController,
                            //         hintText: "lbl_name".tr,
                            //         hintStyle: CustomTextStyles
                            //             .labelMediumGray50008,
                            //         textInputAction:
                            //             TextInputAction.done,
                            //         suffix: Container(
                            //             margin: EdgeInsets.only(
                            //                 left: 30.h,
                            //                 top: 7.v,
                            //                 bottom: 6.v),
                            //             child: CustomImageView(
                            //                 imagePath: ImageConstant
                            //                     .imgArrowRight,
                            //                 height: 24.adaptSize,
                            //                 width: 24.adaptSize)),
                            //         suffixConstraints:
                            //             BoxConstraints(maxHeight: 37.v),
                            //         validator: (value) {
                            //           if (!isText(value)) {
                            //             return "err_msg_please_enter_valid_text"
                            //                 .tr;
                            //           }
                            //           return null;
                            //         },
                            //         borderDecoration:
                            //             TextFormFieldStyleHelper
                            //                 .underLineGray,
                            //         filled: false)),
                            // SizedBox(height: 13.v),
                            TextFormField(
                              controller:
                                  controller.getTextController("username"),
                              decoration: InputDecoration(
                                labelText: 'Name',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),

                            SizedBox(height: 11.v),
                            TextFormField(
                              controller:
                                  controller.getTextController("gender"),
                              decoration: InputDecoration(
                                labelText: 'Gender',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),

                            SizedBox(height: 11.v),
                            TextFormField(
                              controller:
                                  controller.getTextController("dateOfBirth"),
                              decoration: InputDecoration(
                                labelText: 'Date Of Birth',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),

                            TextFormField(
                              controller:
                                  controller.getTextController("language"),
                              decoration: InputDecoration(
                                labelText: 'Language',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),
                            TextFormField(
                              controller:
                                  controller.getTextController("describe"),
                              decoration: InputDecoration(
                                labelText: 'Emojis to describe yourself',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),
                            TextFormField(
                              controller:
                                  controller.getTextController("hometown"),
                              decoration: InputDecoration(
                                labelText: 'Hometown',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),
                            TextFormField(
                              controller: controller.getTextController("bio"),
                              decoration: InputDecoration(
                                labelText: 'Bio',
                                labelStyle:
                                    CustomTextStyles.labelLargeGray8000113,
                              ),
                            ),

                            SizedBox(height: 13.v),
                            GestureDetector(
                              onTap: () {
                                var data = {
                                  'username':
                                      controller.getTextController("username"),
                                  'dateOfBirth': controller
                                      .getTextController("dateOfBirth"),
                                  'gender':
                                      controller.getTextController("gender"),
                                  'bio': controller.getTextController("bio"),
                                };
                                controller.updateProfile(file: controller.imageFile.value,);
                              },
                              child: Container(
                                width: 350,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 2,
                                      color: Colors.black,
                                    )),
                                child: Center(
                                    child: Text(
                                  "Update",
                                  style: CustomTextStyles.bodyMediumBluegray600,
                                )),
                              ),
                            )
                          ]))
                ],
              ),
            ),
          ),
        );
      }),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 44.h,
        leading: GestureDetector(
          onTap: () {
            onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        //  AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_edit_profile".tr));
  }

  /// Section Widget
  // Widget _buildClose() {
  //   return DottedBorder(
  //       color: appTheme.gray50010,
  //       padding: EdgeInsets.only(left: 1.h, top: 1.v, right: 1.h, bottom: 1.v),
  //       strokeWidth: 1.h,
  //       radius: Radius.circular(5),
  //       borderType: BorderType.RRect,
  //       dashPattern: [5, 5],
  //       child: Container(
  //           padding: EdgeInsets.symmetric(horizontal: 163.h, vertical: 16.v),
  //           decoration: AppDecoration.outlineGray50010
  //               .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
  //           child: CustomImageView(
  //               imagePath: ImageConstant.imgCloseGray80003,
  //               height: 24.adaptSize,
  //               width: 24.adaptSize)));
  // }

  Widget _buildFrameName() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              // height: 5.v,
              width: 39.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("Test",
                        style: CustomTextStyles.labelLargeGray8000113)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        // padding: EdgeInsets.only(top: 8.v),
                        child: IntrinsicWidth(
                            child: Column(children: [
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("lbl_name".tr,
                                    style:
                                        CustomTextStyles.labelMediumGray50008),
                                // CustomImageView(
                                //     imagePath: ImageConstant.imgArrowRight,
                                //     height: 24.adaptSize,
                                //     width: 24.adaptSize,
                                //     margin: EdgeInsets.only(bottom: 6.v))
                              ]),
                          // SizedBox(height: 14.v),
                          Divider()
                        ]))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 56.v,
              width: 39.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("lbl_male".tr,
                        style: CustomTextStyles.labelLargeGray8000113)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 8.v),
                        child: IntrinsicWidth(
                            child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 16.v),
                                    child: Text("lbl_gender".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray50008)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 6.v))
                              ]),
                          SizedBox(height: 14.v),
                          Divider()
                        ]))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 56.v,
              width: 74.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Text("lbl_25_01_1898".tr,
                        style: CustomTextStyles.labelLargeGray8000113)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 8.v),
                        child: IntrinsicWidth(
                            child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 15.v),
                                    child: Text("lbl_date_of_birth".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray50008)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 5.v))
                              ]),
                          SizedBox(height: 14.v),
                          Divider()
                        ]))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 5.v))
        ]));
  }

  /// Section Widget

  // Widget _buildFrame2() {
  //   return Padding(
  //       padding: EdgeInsets.only(left: 4.h, right: 3.h),
  //       child:
  //           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //         SizedBox(
  //             height: 56.v,
  //             width: 151.h,
  //             child: Stack(alignment: Alignment.bottomRight, children: [
  //               Align(
  //                   alignment: Alignment.topCenter,
  //                   child: Text("msg_english_french".tr,
  //                       style: CustomTextStyles.labelLargeGray8000113)),
  //               Align(
  //                   alignment: Alignment.bottomRight,
  //                   child: SingleChildScrollView(
  //                       scrollDirection: Axis.horizontal,
  //                       padding: EdgeInsets.only(top: 7.v),
  //                       child: IntrinsicWidth(
  //                           child: Column(children: [
  //                         Padding(
  //                             padding: EdgeInsets.only(right: 2.h),
  //                             child: Row(
  //                                 mainAxisAlignment:
  //                                     MainAxisAlignment.spaceBetween,
  //                                 crossAxisAlignment: CrossAxisAlignment.start,
  //                                 children: [
  //                                   Padding(
  //                                       padding: EdgeInsets.only(top: 17.v),
  //                                       child: Text("lbl_languages".tr,
  //                                           style: CustomTextStyles
  //                                               .labelMediumGray50008)),
  //                                   CustomImageView(
  //                                       imagePath: ImageConstant.imgArrowRight,
  //                                       height: 24.adaptSize,
  //                                       width: 24.adaptSize,
  //                                       margin: EdgeInsets.only(bottom: 7.v))
  //                                 ])),
  //                         SizedBox(height: 12.v),
  //                         Divider()
  //                       ]))))
  //             ])),
  //         CustomImageView(
  //             imagePath: ImageConstant.imgArrowRight,
  //             height: 24.adaptSize,
  //             width: 24.adaptSize,
  //             margin: EdgeInsets.symmetric(vertical: 7.v))
  //       ]));
  // }
  Widget _buildFrame2() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 56.v,
              width: 55.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("english",
                        style: CustomTextStyles.labelLargeGray8000113)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 8.v),
                        child: IntrinsicWidth(
                            child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 16.v),
                                    child: Text("lbl_languages".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray50008)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 6.v))
                              ]),
                          SizedBox(height: 14.v),
                          Divider()
                        ]))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame3() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 56.v,
              width: 142.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClose16x16,
                          height: 16.adaptSize,
                          width: 16.adaptSize),
                      CustomImageView(
                          imagePath: ImageConstant.imgClose16x16,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 2.h)),
                      CustomImageView(
                          imagePath: ImageConstant.imgClose16x16,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 2.h))
                    ])),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 9.v),
                        child: IntrinsicWidth(
                            child: _buildHometown(
                                hometownText: "msg_emojis_to_describe".tr))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 9.v, bottom: 7.v))
        ]));
  }

  /// Section Widget
  ///
  Widget _buildFrame4() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          SizedBox(
              height: 56.v,
              width: 55.h,
              child: Stack(alignment: Alignment.bottomRight, children: [
                Align(
                    alignment: Alignment.topLeft,
                    child: Text("us",
                        style: CustomTextStyles.labelLargeGray8000113)),
                Align(
                    alignment: Alignment.bottomRight,
                    child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 8.v),
                        child: IntrinsicWidth(
                            child: Column(children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 16.v),
                                    child: Text("HomeTone".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray50008)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    margin: EdgeInsets.only(bottom: 6.v))
                              ]),
                          SizedBox(height: 14.v),
                          Divider()
                        ]))))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 8.v, bottom: 6.v))
        ]));
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_make_money".tr,
                style: CustomTextStyles.labelLargeGray8000113),
            SizedBox(height: 6.v),
            Text("lbl_bio".tr, style: CustomTextStyles.labelMediumGray50008)
          ]),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(top: 7.v, bottom: 5.v))
        ]));
  }

  /// Common widget
  Widget _buildHometown({required String hometownText}) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 16.v),
                    child: Text(hometownText,
                        style: CustomTextStyles.labelMediumGray50008
                            .copyWith(color: appTheme.gray50008))),
                CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 6.v))
              ])),
      SizedBox(height: 13.v),
      Divider()
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}