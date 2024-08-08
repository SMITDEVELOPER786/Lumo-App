// ignore_for_file: non_constant_identifier_names

import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/level_screen/models/level_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/level_screen/models/levelclass.dart';

import '../../widgets/custom_elevated_button.dart';
import '../sign_in_screen/controller/usercontroller.dart';
import 'controller/level_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class LevelScreen extends GetWidget<LevelController> {
  const LevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List levels = [
      Level(
          minLevel: 0,
          maxLevel: 12,
          perLevelXP: 500000,
          totalLevelXP: 6000000,
          reward: '1d.'),
      Level(
          minLevel: 12,
          maxLevel: 23,
          perLevelXP: 1500000,
          totalLevelXP: 16500000,
          reward: '2d.'),
      Level(
          minLevel: 23,
          maxLevel: 34,
          perLevelXP: 5000000,
          totalLevelXP: 55000000,
          reward: '3d.'),
      Level(
          minLevel: 34,
          maxLevel: 45,
          perLevelXP: 10000000,
          totalLevelXP: 110000000,
          reward: '4d.'),
      Level(
          minLevel: 45,
          maxLevel: 56,
          perLevelXP: 20000000,
          totalLevelXP: 220000000,
          reward: '5d.'),
      Level(
          minLevel: 56,
          maxLevel: 67,
          perLevelXP: 5000000,
          totalLevelXP: 55000000,
          reward: '10d.'),
      Level(
          minLevel: 67,
          maxLevel: 78,
          perLevelXP: 10000000,
          totalLevelXP: 110000000,
          reward: '20d.'),
      Level(
          minLevel: 78,
          maxLevel: 89,
          perLevelXP: 15000000,
          totalLevelXP: 165000000,
          reward: '30d.'),
      Level(
          minLevel: 89,
          maxLevel: 101,
          perLevelXP: 20000000,
          totalLevelXP: 240000000,
          reward: '40d.'),
      Level(
          minLevel: 101,
          maxLevel: 112,
          perLevelXP: 30000000,
          totalLevelXP: 630000000,
          reward: '50d.'),
      Level(
          minLevel: 112,
          maxLevel: 143,
          perLevelXP: 50000000,
          totalLevelXP: 1050000000,
          reward: '70d.'),
      Level(
          minLevel: 143,
          maxLevel: 164,
          perLevelXP: 100000000,
          totalLevelXP: 2100000000,
          reward: '100d.'),
      Level(
          minLevel: 164,
          maxLevel: 185,
          perLevelXP: 150000000,
          totalLevelXP: 3150000000,
          reward: '1000d.'),
      Level(
          minLevel: 185,
          maxLevel: 200,
          perLevelXP: 200000000,
          totalLevelXP: 3750000000,
          reward: '10000d.'),
      Level(
          minLevel: 200,
          maxLevel: 222,
          perLevelXP: 300000000,
          totalLevelXP: 6600000000,
          reward: '20000d.'),
    ];

    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(children: [
                          _buildSixtyNine(),
                          SizedBox(height: 15.v),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 32.v,
                                  width: 50.h,
                                  margin: EdgeInsets.only(right: 69.h),
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgCheckmarkGray80003,
                                            height: 32.v,
                                            width: 50.h,
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                                (UserController.user.data!
                                                                .isLevel! /
                                                            100)
                                                        .toString() +
                                                    "%",
                                                style: CustomTextStyles
                                                    .labelLargeGray80003Bold))
                                      ]))),
                          SizedBox(height: 3.v),
                          Container(
                              height: 10.v,
                              width: 353.h,
                              decoration: BoxDecoration(
                                  color: appTheme.lime10014,
                                  borderRadius: BorderRadius.circular(5.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.h),
                                  child: LinearProgressIndicator(
                                      value:
                                          UserController.user.data!.isLevel! /
                                              100,
                                      backgroundColor: appTheme.lime10014))),
                          SizedBox(height: 3.v),
                          _buildFrame1(),
                          SizedBox(height: 26.v),
                          _buildView(),
                          SizedBox(height: 23.v),
                          Container(
                            width: 350,
                            height: 250,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: levels.length,
                                itemBuilder: (context, index) {
                                  final level = levels[index];
                                  return Card(
                                      child: ListTile(
                                    title: Text(
                                        'Level ${level.minLevel}-${level.maxLevel}'),
                                    subtitle: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Per Level XP: ${level.perLevelXP}'),
                                        Text(
                                            'Total Level XP: ${level.totalLevelXP}'),
                                        Text('Reward: ${level.reward}'),
                                      ],
                                    ),
                                  ));
                                }),
                          ),
                          SizedBox(height: 23.v),
                          Text("lbl_gift_reward".tr,
                              style:
                                  CustomTextStyles.titleSmallGray80001Medium),
                          SizedBox(height: 11.v),
                          Text("msg_higher_level_get2".tr,
                              style: CustomTextStyles.bodySmallInterGray50003),
                          SizedBox(height: 10.v),
                          BuildBottomSection()

                          // _buildClose()
                        ]))))));
  }

  Container BuildBottomSection() => Container(
      height: 250,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 233, 241, 234),
          borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 330,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 244, 224, 218)),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(ImageConstant.imgKlipartz16)),
                        Container(
                            width: 100,
                            child: CustomElevatedButton(
                                height: 50,
                                onPressed: () {},
                                text: "365 Days".tr,
                                buttonStyle: CustomButtonStyles.fillGray,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.h),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.amber20033,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        20,
                                      ),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 240, 200, 168)
                                          .withOpacity(
                                              0.8), // Start with yellow at the top
                                      Color.fromARGB(255, 251, 225,
                                          204), // Transition to green at the bottom
                                    ],
                                    stops: [0.2, 1.0],
                                  ),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 100,
                    child: CustomElevatedButton(
                        // width: 20,
                        onPressed: () {},
                        text: "lbl_get".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenToPrimaryTL25Decoration),
                  ),
                ],
              )),
          Container(
              height: 330,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 244, 224, 218)),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(ImageConstant.imgKlipartz16)),
                        Container(
                            width: 100,
                            child: CustomElevatedButton(
                                height: 50,
                                onPressed: () {},
                                text: "180 Days".tr,
                                buttonStyle: CustomButtonStyles.fillGray,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.h),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.amber20033,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        20,
                                      ),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 240, 200, 168)
                                          .withOpacity(
                                              0.8), // Start with yellow at the top
                                      Color.fromARGB(255, 251, 225,
                                          204), // Transition to green at the bottom
                                    ],
                                    stops: [0.2, 1.0],
                                  ),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 100,
                    child: CustomElevatedButton(
                        // width: 20,
                        onPressed: () {},
                        text: "lbl_get".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenToPrimaryTL25Decoration),
                  ),
                ],
              )),
          Container(
              height: 330,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 244, 224, 218)),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: 80,
                            child: Image.asset(ImageConstant.imgKlipartz16)),
                        Container(
                            width: 100,
                            child: CustomElevatedButton(
                                height: 50,
                                onPressed: () {},
                                text: "180 Days".tr,
                                buttonStyle: CustomButtonStyles.fillGray,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.h),
                                  boxShadow: [
                                    BoxShadow(
                                      color: appTheme.amber20033,
                                      spreadRadius: 2.h,
                                      blurRadius: 2.h,
                                      offset: Offset(
                                        0,
                                        20,
                                      ),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color.fromARGB(255, 240, 200, 168)
                                          .withOpacity(
                                              0.8), // Start with yellow at the top
                                      Color.fromARGB(255, 251, 225,
                                          204), // Transition to green at the bottom
                                    ],
                                    stops: [0.2, 1.0],
                                  ),
                                )))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 100,
                    child: CustomElevatedButton(
                        // width: 20,
                        onPressed: () {},
                        text: "lbl_get".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenToPrimaryTL25Decoration),
                  ),
                ],
              )),
        ],
      ));

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: GestureDetector(
          onTap: () {
            onTapArrowLeft();
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        // AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_level".tr));
  }

  /// Section Widget
  Widget _buildSixtyNine() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 104.h, vertical: 10.v),
        decoration: AppDecoration.fillLightGreen
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 5.v),
          SizedBox(
              height: 95.v,
              width: 190.h,
              child: Stack(alignment: Alignment.bottomCenter, children: [
                CircleAvatar(
                  radius: 32.h,
                  backgroundImage: UserController
                          .user.data!.profileId!.profileImage!
                          .toString()
                          .contains("googleusercontent")
                      ? NetworkImage(
                          "${UserController.user.data!.profileId!.profileImage}")
                      : NetworkImage(
                          'https://res.cloudinary.com/dk3hy0n39/image/upload/${UserController.user.data!.profileId!.profileImage}',
                          //  height: 64.adaptSize,
                          //   width: 64.adaptSize,
                          // radius: BorderRadius.circular(
                          //   32.h,
                          // ),
                        ),
                ),
                // CustomImageView(
                //     imagePath: ImageConstant.imgEllipse38,
                //     height: 91.adaptSize,
                //     width: 91.adaptSize,
                //     radius: BorderRadius.circular(45.h),
                //     alignment: Alignment.topCenter),
                Padding(
                  padding: const EdgeInsets.only(top: 70.0),
                  child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 50.v,
                        width: 119.h,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://res.cloudinary.com/dk3hy0n39/image/upload/${userlevelImage.toString()}"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                )
              ])),
          SizedBox(height: 10.v),
          Text(UserController.user.data!.profileId!.username.toString(),
              style: CustomTextStyles.titleMediumGray80003)
        ]));
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Level " + UserController.user.data!.isLevel.toString(),
          style: CustomTextStyles.labelLargeGray80003),
      Text("lbl_1200_1800".tr, style: CustomTextStyles.labelLargeGray80003)
    ]);
  }

  /// Section Widget
  Widget _buildView() {
    return SizedBox(
        height: 233.v,
        width: 353.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 171.v,
                  width: 353.h,
                  decoration: BoxDecoration(
                      color: appTheme.lightGreen5002,
                      borderRadius: BorderRadius.circular(10.h)))),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 9.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Text("lbl_badge_reward".tr,
                        style: CustomTextStyles.titleSmallGray80001Medium),
                    SizedBox(height: 9.v),
                    Text("msg_higher_level_get".tr,
                        style: CustomTextStyles.bodySmallInterGray50003),
                    SizedBox(height: 10.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgNewProject22,
                        height: 171.v,
                        width: 335.h,
                        radius: BorderRadius.circular(10.h))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildClose() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 24.v),
        decoration: AppDecoration.fillLightgreen5002
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillLime10009.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.orange5003,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL5),
                              child: Container(
                                  height: 65.v,
                                  width: 107.h,
                                  decoration: AppDecoration.fillOrange.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL5),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imageNotFound,
                                            height: 60.v,
                                            width: 107.h,
                                            alignment: Alignment.topCenter),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: 57.adaptSize,
                                                width: 57.adaptSize,
                                                margin: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup40x40,
                                                          height: 40.adaptSize,
                                                          width: 40.adaptSize,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 57.v,
                                                              width: 8.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle57x1,
                                                                        height: 57
                                                                            .v,
                                                                        width:
                                                                            1.h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgClose16x16,
                                                                        height: 35
                                                                            .v,
                                                                        width:
                                                                            5.h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgClose16x16,
                                                                        height: 22
                                                                            .v,
                                                                        width:
                                                                            8.h,
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgGroup40x40,
                                                          height: 40.adaptSize,
                                                          width: 40.adaptSize,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 8.v,
                                                              width: 57.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle1x57,
                                                                        height:
                                                                            1.v,
                                                                        width: 57
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgClose16x16,
                                                                        height:
                                                                            5.v,
                                                                        width: 35
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgClose16x16,
                                                                        height:
                                                                            8.v,
                                                                        width: 22
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 43.v,
                                                              width: 17.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup40x40,
                                                                        height: 43
                                                                            .v,
                                                                        width: 17
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup40x40,
                                                                        height: 43
                                                                            .v,
                                                                        width: 17
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 18.v,
                                                              width: 43.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup40x40,
                                                                        height: 18
                                                                            .v,
                                                                        width: 43
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgGroup40x40,
                                                                        height: 18
                                                                            .v,
                                                                        width: 43
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center)
                                                                  ]))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5.h,
                                                                  top: 12.v),
                                                          child:
                                                              _buildNinetyFour()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x8,
                                                          height: 10.v,
                                                          width: 7.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.h,
                                                                  top: 14.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 9.v,
                                                          width: 6.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 7.h,
                                                                  top: 16.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 2.h,
                                                                  top: 12.v),
                                                          child: _buildNinetyOne(
                                                              userImage1:
                                                                  ImageConstant
                                                                      .imgVector16x13)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 10.adaptSize,
                                                          width: 10.adaptSize,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 6.h,
                                                                  top: 18.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 1.h,
                                                                  top: 20.v),
                                                          child:
                                                              _buildNinetySix()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 7.v,
                                                          width: 11.h,
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 7.h)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 3.h,
                                                                  bottom: 23.v),
                                                          child:
                                                              _buildNinetyNine()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 3.v,
                                                          width: 9.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  bottom:
                                                                      23.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x8,
                                                          height: 2.v,
                                                          width: 11.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h,
                                                                  bottom:
                                                                      21.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x8,
                                                          height: 1.v,
                                                          width: 11.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 8.h,
                                                                  bottom:
                                                                      23.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x8,
                                                          height: 1.v,
                                                          width: 10.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 10.h,
                                                                  bottom:
                                                                      22.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 2.v,
                                                          width: 7.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 12.h,
                                                                  bottom:
                                                                      22.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 12.v,
                                                                  right: 5.h),
                                                          child:
                                                              _buildNinetyFour()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x8,
                                                          height: 10.v,
                                                          width: 7.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v,
                                                                  right: 6.h)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 9.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 16.v,
                                                                  right: 7.h)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 12.v,
                                                                  right: 2.h),
                                                          child: _buildNinetyOne(
                                                              userImage1:
                                                                  ImageConstant
                                                                      .imgVector1)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 10.adaptSize,
                                                          width: 10.adaptSize,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 18.v,
                                                                  right: 6.h)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 20.v,
                                                                  right: 1.h),
                                                          child:
                                                              _buildNinetySix()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 7.v,
                                                          width: 11.h,
                                                          alignment: Alignment
                                                              .centerRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 7.h)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 3.h,
                                                                  bottom: 23.v),
                                                          child:
                                                              _buildNinetyNine()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 3.v,
                                                          width: 9.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 10.h,
                                                                  bottom:
                                                                      23.v)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height: 2.v,
                                                              width: 11.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          8.h,
                                                                      bottom:
                                                                          21.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVector13x8,
                                                                        height:
                                                                            2.v,
                                                                        width: 11
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: SizedBox(
                                                                            height: 1.v,
                                                                            width: 11.h,
                                                                            child: Stack(alignment: Alignment.bottomLeft, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector13x8, height: 1.v, width: 11.h, alignment: Alignment.topCenter),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector13x8, height: 1.v, width: 10.h, alignment: Alignment.bottomLeft)
                                                                            ])))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 2.v,
                                                          width: 7.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 13.h,
                                                                  bottom:
                                                                      22.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgTelevisionGray70003,
                                                          height: 34.v,
                                                          width: 26.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 38.v,
                                                              width: 30.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgTelevisionGray40001,
                                                                        height: 38
                                                                            .v,
                                                                        width: 30
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: SizedBox(
                                                                            height: 12.v,
                                                                            width: 25.h,
                                                                            child: Stack(alignment: Alignment.topLeft, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x10, height: 3.v, width: 10.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 5.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x8, height: 3.v, width: 8.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 6.h, top: 1.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector8x6, height: 8.v, width: 6.h, alignment: Alignment.bottomLeft),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector9x6, height: 9.v, width: 6.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 1.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector2, height: 3.v, width: 10.h, alignment: Alignment.topRight),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3, height: 3.v, width: 8.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 1.v, right: 1.h))
                                                                            ])))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                              height: 27.v,
                                                              width: 15.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          12.h,
                                                                      bottom:
                                                                          7.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVector27x15,
                                                                        height: 27
                                                                            .v,
                                                                        width: 15
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVector25x14,
                                                                        height: 25
                                                                            .v,
                                                                        width: 14
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.centerRight)
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector8x6,
                                                          height: 8.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 13.v,
                                                                  right: 13.h)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector4,
                                                          height: 9.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v,
                                                                  right: 14.h)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector27x15,
                                                          height: 27.v,
                                                          width: 15.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 13.h,
                                                                  bottom: 7.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector25x14,
                                                          height: 25.v,
                                                          width: 14.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 14.h,
                                                                  bottom: 9.v)),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Container(
                                                              height: 3.v,
                                                              width: 5.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 7.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVectorGray60006,
                                                                        height:
                                                                            3.v,
                                                                        width:
                                                                            5.h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: SizedBox(
                                                                            height: 3.v,
                                                                            width: 5.h,
                                                                            child: Stack(alignment: Alignment.centerLeft, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 2.h, alignment: Alignment.centerRight),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 2.h, alignment: Alignment.centerLeft)
                                                                            ])))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgTelevisionPurple800,
                                                          height: 34.v,
                                                          width: 26.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 12.h,
                                                                  bottom: 17.v),
                                                          child:
                                                              _buildVector()),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 12.h,
                                                                  bottom: 17.v),
                                                          child:
                                                              _buildVector()),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector32x25,
                                                          height: 32.v,
                                                          width: 25.h,
                                                          alignment:
                                                              Alignment.center),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector5,
                                                          height: 8.v,
                                                          width: 6.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  top: 14.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector2x7,
                                                          height: 2.v,
                                                          width: 7.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20.h,
                                                                  top: 12.v)),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVector23x13,
                                                          height: 23.v,
                                                          width: 13.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 15.h,
                                                                  bottom:
                                                                      10.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector5,
                                                          height: 8.v,
                                                          width: 6.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 14.v,
                                                                  right: 15.h)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector2x7,
                                                          height: 2.v,
                                                          width: 7.h,
                                                          alignment: Alignment
                                                              .topRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  top: 12.v,
                                                                  right: 20.h)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height: 23.v,
                                                              width: 13.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          15.h,
                                                                      bottom:
                                                                          10.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVector23x13,
                                                                        height: 23
                                                                            .v,
                                                                        width: 13
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgVectorGray50008,
                                                                        height:
                                                                            3.v,
                                                                        width:
                                                                            4.h,
                                                                        alignment:
                                                                            Alignment
                                                                                .topLeft,
                                                                        margin: EdgeInsets.only(
                                                                            left:
                                                                                3.h,
                                                                            top: 3.v))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector13x6,
                                                          height: 13.v,
                                                          width: 6.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 13.h,
                                                                  top: 16.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector4x12,
                                                          height: 4.v,
                                                          width: 12.h,
                                                          alignment:
                                                              Alignment.topLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 20.h,
                                                                  top: 9.v)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height: 16.v,
                                                              width: 17.h,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          18.v),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topLeft,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgSignal,
                                                                        height: 16
                                                                            .v,
                                                                        width: 17
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topLeft,
                                                                        child: SizedBox(
                                                                            height: 10.v,
                                                                            width: 8.h,
                                                                            child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 4.v, width: 8.h, alignment: Alignment.bottomCenter),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 8.h, alignment: Alignment.bottomCenter),
                                                                              _buildNinetySeven()
                                                                            ])))
                                                                  ]))),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector3x2,
                                                          height: 8.v,
                                                          width: 2.h,
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 25.h,
                                                                  bottom:
                                                                      18.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector3x2,
                                                          height: 8.v,
                                                          width: 2.h,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  bottom:
                                                                      18.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector3x2,
                                                          height: 3.v,
                                                          width: 8.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.h,
                                                                  bottom:
                                                                      24.v)),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgVector3x2,
                                                          height: 4.v,
                                                          width: 8.h,
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  right: 20.h,
                                                                  bottom:
                                                                      25.v)),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 22.v,
                                                                  right: 23.h),
                                                          child:
                                                              _buildNinetySeven()),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgClose16x16,
                                                          height: 17.v,
                                                          width: 18.h,
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: SizedBox(
                                                              height: 18.v,
                                                              width: 19.h,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgSignalGray50008,
                                                                        height: 18
                                                                            .v,
                                                                        width: 19
                                                                            .h,
                                                                        alignment:
                                                                            Alignment.center),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: SizedBox(
                                                                            height: 18.v,
                                                                            width: 19.h,
                                                                            child: Stack(alignment: Alignment.topLeft, children: [
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 4.v, width: 9.h, alignment: Alignment.centerLeft),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 4.v, width: 9.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 6.v)),
                                                                              Align(
                                                                                  alignment: Alignment.topLeft,
                                                                                  child: Padding(
                                                                                      padding: EdgeInsets.only(left: 6.h),
                                                                                      child: Row(children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 10.v, width: 2.h),
                                                                                        CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 5.v, width: 2.h, margin: EdgeInsets.only(top: 1.v, bottom: 3.v))
                                                                                      ]))),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 10.v, width: 2.h, alignment: Alignment.topRight, margin: EdgeInsets.only(right: 6.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 4.v, width: 9.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 6.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 4.v, width: 9.h, alignment: Alignment.centerRight),
                                                                              Align(
                                                                                  alignment: Alignment.bottomRight,
                                                                                  child: Container(
                                                                                      height: 8.v,
                                                                                      width: 5.h,
                                                                                      margin: EdgeInsets.only(right: 3.h),
                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 8.v, width: 5.h, alignment: Alignment.center),
                                                                                        Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: SizedBox(
                                                                                                height: 8.v,
                                                                                                width: 5.h,
                                                                                                child: Stack(alignment: Alignment.centerLeft, children: [
                                                                                                  CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 8.v, width: 5.h, alignment: Alignment.center),
                                                                                                  Align(
                                                                                                      alignment: Alignment.centerLeft,
                                                                                                      child: SizedBox(
                                                                                                          height: 5.adaptSize,
                                                                                                          width: 5.adaptSize,
                                                                                                          child: Stack(alignment: Alignment.centerRight, children: [
                                                                                                            CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 2.v, width: 5.h, alignment: Alignment.bottomCenter),
                                                                                                            CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 5.v, width: 1.h, alignment: Alignment.centerRight)
                                                                                                          ])))
                                                                                                ])))
                                                                                      ]))),
                                                                              Padding(padding: EdgeInsets.only(left: 3.h), child: _buildNinetySeven()),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 1.v, width: 5.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 1.h, top: 6.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 3.v, width: 4.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 1.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 5.v, width: 2.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 1.v, right: 7.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 1.v, width: 5.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 6.v, right: 1.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 5.v, width: 1.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 4.h, bottom: 1.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 2.v, width: 5.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 4.h, bottom: 1.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgClose16x16, height: 3.v, width: 4.h, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 1.h)),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: SizedBox(
                                                                                      height: 14.v,
                                                                                      width: 15.h,
                                                                                      child: Stack(alignment: Alignment.topLeft, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgSignalRed900, height: 14.v, width: 15.h, alignment: Alignment.center),
                                                                                        Align(
                                                                                            alignment: Alignment.topLeft,
                                                                                            child: Row(children: [
                                                                                              SizedBox(
                                                                                                  height: 8.v,
                                                                                                  width: 7.h,
                                                                                                  child: Stack(alignment: Alignment.centerRight, children: [
                                                                                                    CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 7.h, alignment: Alignment.bottomCenter),
                                                                                                    CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 8.v, width: 2.h, alignment: Alignment.centerRight)
                                                                                                  ])),
                                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 8.v, width: 2.h)
                                                                                            ]))
                                                                                      ]))),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 7.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 6.v, right: 1.h)),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Container(
                                                                                      height: 3.v,
                                                                                      width: 7.h,
                                                                                      margin: EdgeInsets.only(right: 1.h),
                                                                                      child: Stack(alignment: Alignment.topLeft, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 7.h, alignment: Alignment.center),
                                                                                        CustomImageView(imagePath: ImageConstant.imgVector2x6, height: 2.v, width: 6.h, alignment: Alignment.topLeft)
                                                                                      ]))),
                                                                              Padding(padding: EdgeInsets.only(right: 4.h, bottom: 1.v), child: _buildVector1()),
                                                                              Padding(padding: EdgeInsets.only(left: 4.h, bottom: 1.v), child: _buildVector1()),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector3x2, height: 3.v, width: 7.h, alignment: Alignment.centerLeft, margin: EdgeInsets.only(left: 1.h)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector2x6, height: 5.v, width: 4.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 5.h, bottom: 2.v)),
                                                                              CustomImageView(imagePath: ImageConstant.imgVector7x6, height: 7.v, width: 6.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(left: 2.h, top: 2.v)),
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: SizedBox(
                                                                                      height: 14.v,
                                                                                      width: 15.h,
                                                                                      child: Stack(alignment: Alignment.center, children: [
                                                                                        CustomImageView(imagePath: ImageConstant.imgClipPathGroup, height: 14.v, width: 15.h, alignment: Alignment.center),
                                                                                        CustomImageView(imagePath: ImageConstant.imgOffer, height: 14.v, width: 15.h, alignment: Alignment.center)
                                                                                      ])))
                                                                            ])))
                                                                  ])))
                                                    ])))
                                      ]))),
                          SizedBox(height: 6.v),
                          Text("lbl_365_days".tr,
                              style: CustomTextStyles.labelMediumGray80001_1),
                          SizedBox(height: 5.v)
                        ])),
                    SizedBox(height: 10.v),
                    Container(
                        width: 67.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 4.v),
                        decoration: AppDecoration.gradientGreenToPrimary
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder10),
                        child: Text("lbl_get".tr,
                            style: CustomTextStyles.labelMediumSemiBold_1))
                  ]))),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: _buildFrame(
                  duration: "lbl_180_days".tr, getVar: "lbl_get".tr)),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: _buildFrame(
                  duration: "lbl_180_days".tr, getVar: "lbl_get".tr))
        ]));
  }

  /// Common widget
  Widget _buildNinetyFour() {
    return SizedBox(
        height: 13.v,
        width: 8.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector13x8,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector13x8,
              height: 13.v,
              width: 8.h,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildNinetyOne({required String userImage1}) {
    return SizedBox(
        height: 16.v,
        width: 13.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: userImage1,
              height: 16.v,
              width: 13.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 16.v,
                  width: 13.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector16x13,
                        height: 16.v,
                        width: 13.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector13x8,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        alignment: Alignment.bottomLeft)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildNinetySix() {
    return SizedBox(
        height: 11.v,
        width: 17.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector11x17,
              height: 11.v,
              width: 17.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 11.v,
                  width: 17.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector11x17,
                        height: 11.v,
                        width: 17.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector16x13,
                        height: 8.v,
                        width: 15.h,
                        alignment: Alignment.bottomLeft)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildNinetyNine() {
    return SizedBox(
        height: 6.v,
        width: 16.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector11x17,
              height: 6.v,
              width: 16.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 6.v,
                  width: 16.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVector11x17,
                        height: 6.v,
                        width: 16.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgVector13x8,
                        height: 4.v,
                        width: 14.h,
                        alignment: Alignment.bottomLeft)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildVector() {
    return SizedBox(
        height: 4.v,
        width: 3.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVectorGray60006,
              height: 4.v,
              width: 3.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 4.v,
                  width: 3.h,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgClose16x16,
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        alignment: Alignment.topCenter),
                    CustomImageView(
                        imagePath: ImageConstant.imgClose16x16,
                        height: 2.v,
                        width: 3.h,
                        alignment: Alignment.bottomCenter)
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildNinetySeven() {
    return SizedBox(
        height: 7.v,
        width: 5.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 7.v,
              width: 5.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 7.v,
              width: 5.h,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildVector1() {
    return SizedBox(
        height: 6.v,
        width: 4.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 6.v,
              width: 4.h,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgVector3x2,
              height: 6.v,
              width: 4.h,
              alignment: Alignment.center)
        ]));
  }

  /// Common widget
  Widget _buildFrame({
    required String duration,
    required String getVar,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Container(
                  decoration: AppDecoration.fillLime10009
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL5),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 5.v),
                              Container(
                                  height: 60.v,
                                  width: 107.h,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 29.h, vertical: 4.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imageNotFound),
                                          fit: BoxFit.cover)),
                                  child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgGroupGray40001,
                                      height: 37.v,
                                      width: 49.h,
                                      alignment: Alignment.bottomCenter))
                            ])),
                    SizedBox(height: 6.v),
                    Text(duration,
                        style: CustomTextStyles.labelMediumGray80001_1
                            .copyWith(color: appTheme.gray80001)),
                    SizedBox(height: 5.v)
                  ])),
              SizedBox(height: 10.v),
              Container(
                  width: 67.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 4.v),
                  decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text(getVar,
                      style: CustomTextStyles.labelMediumSemiBold_1
                          .copyWith(color: appTheme.whiteA700)))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
