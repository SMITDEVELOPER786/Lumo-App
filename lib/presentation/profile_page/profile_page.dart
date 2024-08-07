import 'package:google_sign_in/google_sign_in.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/level_screen/level_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/my_wallet_screen/my_wallet_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_up_one_screen/sign_up_one_screen.dart';

import '../profile_page/widgets/profile_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_item_model.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ProfilePage> createState() => _ProfilePageState();
  final UserDetails = Get.put(UserController());
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 7.v),
          decoration: AppDecoration.fillLime,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Column(
                children: [
                  _buildEdit(),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 83.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillLime10003.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgCherries,
                                height: 7.adaptSize,
                                width: 7.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 5.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  top: 2.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  UserController.user.data!.profileId!.diamonds
                                      .toString(),
                                  style:
                                      CustomTextStyles.labelMediumGray80001_1,
                                ),
                              ),
                              Container(
                                height: 17.v,
                                width: 22.h,
                                margin: EdgeInsets.only(left: 9.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.gradientGreenToPrimary
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 82.h,
                          margin: EdgeInsets.only(left: 8.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillLime10003.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgPngegg51,
                                height: 9.v,
                                width: 12.h,
                                margin: EdgeInsets.symmetric(vertical: 4.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  top: 2.v,
                                  bottom: 1.v,
                                ),
                                child: Text(
                                  UserController.user.data!.profileId!.diamonds
                                      .toString(),
                                  style:
                                      CustomTextStyles.labelMediumGray80001_1,
                                ),
                              ),
                              Container(
                                height: 17.v,
                                width: 22.h,
                                margin: EdgeInsets.only(left: 8.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.gradientGreenToPrimary
                                    .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgPlus,
                                  height: 10.adaptSize,
                                  width: 10.adaptSize,
                                  alignment: Alignment.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // _buildTwentyEight(),
                        _buildLv10(),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildFrame1(
                        dynamicText1: UserController
                            .user.data!.profileId!.friends!.length
                            .toString(),
                        dynamicText2: "lbl_friends".tr,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: SizedBox(
                          height: 29.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.lightGreen10004,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: _buildFrame(
                          dynamicText: UserController
                              .user.data!.profileId!.followers!.length
                              .toString(),
                          dynamicText1: "lbl_followers".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: SizedBox(
                          height: 29.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.lightGreen10004,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: _buildFrame(
                          dynamicText: UserController
                              .user.data!.profileId!.following!.length
                              .toString(),
                          dynamicText1: "lbl_following".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13.h),
                        child: SizedBox(
                          height: 29.v,
                          child: VerticalDivider(
                            width: 1.h,
                            thickness: 1.v,
                            color: appTheme.lightGreen10004,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: _buildFrame1(
                          dynamicText1: UserController
                              .user.data!.profileId!.visitors!.length
                              .toString(),
                          dynamicText2: "lbl_visitors".tr,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 29.v),
                  _buildFrame6(),
                  SizedBox(height: 33.v),
                  _buildProfile(),
                  SizedBox(height: 28.v),
                  _buildLogout(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEdit() {
    return SizedBox(
      height: 189.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5983,
            height: 146.v,
            width: 353.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 124.h,
                right: 118.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 70.v,
                    width: 69.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 69.adaptSize,
                            width: 69.adaptSize,
                            padding: EdgeInsets.all(1.h),
                            decoration: AppDecoration.outlineLime.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder34,
                            ),
                            child: CircleAvatar(
                                radius: 32.h,
                                backgroundImage: UserController
                                        .user.data!.profileId!.profileImage!
                                        .toString()
                                        .contains("googleusercontent")
                                    ? NetworkImage(
                                        "${UserController.user.data!.profileId!.profileImage}")
                                    : NetworkImage(
                                        'https://res.cloudinary.com/dk3hy0n39/image/upload/${UserController.user.data!.profileId!.profileImage}')),
                            //    CustomImageView(
                            //     imagePath: ImageConstant.imgEllipse33,
                            //     height: 64.adaptSize,
                            //     width: 64.adaptSize,
                            //     radius: BorderRadius.circular(
                            //       32.h,
                            //     ),
                            //     alignment: Alignment.center,
                            //   ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.lazyPut(() => EditProfileScreen());
                            Get.to(() => EditProfileScreen());
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: CustomIconButton(
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.fillLime,
                              alignment: Alignment.bottomRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEdit,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "${UserController.user.data!.profileId!.username}".tr,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumGray90005,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "${UserController.user.data!.id}".tr,
                    style: CustomTextStyles.labelLargeGray50016,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyEight() {
    return CustomElevatedButton(
      height: 20.v,
      width: 56.h,
      text: "lbl_28".tr,
      margin: EdgeInsets.only(left: 8.h),
      buttonStyle: CustomButtonStyles.fillLimeTL10,
      buttonTextStyle: CustomTextStyles.labelMediumGray80003,
    );
  }

  /// Section Widget
  Widget _buildLv10() {
    return Container(
      height: 40.v,
      width: 119.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              "https://res.cloudinary.com/dk3hy0n39/image/upload/${userlevelImage.toString()}"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMyLevel() {
    return CustomElevatedButton(
      onPressed: () {
        Get.lazyPut(() => LevelScreen());
        Get.to(() => LevelScreen());
      },
      height: 48.v,
      width: 172.h,
      text: "lbl_my_level".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgShootingStars,
          height: 16.adaptSize,
          width: 16.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToOrangeDecoration,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildFrame6() {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMyLevel(),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 48.v,
              width: 172.h,
              decoration: AppDecoration.gradientGreenAToGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    // imagePath: ImageConstant.imgMaskGroup,
                    height: 48.v,
                    width: 172.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.lazyPut(() => MyWalletScreen());
                        Get.to(() => MyWalletScreen());
                      },
                      child: Container(
                        width: 116.h,
                        margin: EdgeInsets.fromLTRB(12.h, 7.v, 44.h, 16.v),
                        child: GestureDetector(
                          onTap: () {
                            Get.lazyPut(() => MyWalletScreen());
                            Get.to(() => MyWalletScreen());
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 9.v),
                                child: Text(
                                  "lbl_my_wallet".tr,
                                  style: CustomTextStyles
                                      .bodySmallInterWhiteA70012,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgShootingStars,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(bottom: 8.v),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfile() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 95.v,
              crossAxisCount: 4,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 55.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                controller.profileModelObj.value.profileItemList.value.length,
            itemBuilder: (context, index) {
              ProfileItemModel model =
                  controller.profileModelObj.value.profileItemList.value[index];
              return ProfileItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLogout() {
    return Container(
      child: CustomElevatedButton(
        onPressed: () {
          googleLogout();
          Get.to(SignUpOneScreen());
        },
        text: "lbl_logout".tr,
        margin: EdgeInsets.symmetric(horizontal: 31.h),
        rightIcon: Container(
          margin: EdgeInsets.only(left: 30.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgArrowdownWhiteA70016x16,
            height: 16.adaptSize,
            width: 16.adaptSize,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillGreen,
      ),
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Column(
      children: [
        Text(
          dynamicText,
          style: CustomTextStyles.labelMediumGray80001SemiBold_1.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          dynamicText1,
          style: CustomTextStyles.interBluegray40001.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFrame1({
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Column(
      children: [
        Text(
          dynamicText1,
          style: CustomTextStyles.labelMediumGray80001SemiBold_1.copyWith(
            color: appTheme.gray80001,
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          dynamicText2,
          style: CustomTextStyles.interBluegray40001.copyWith(
            color: appTheme.blueGray40001,
          ),
        ),
      ],
    );
  }
}

googleLogout() async {
  print("googleLogin method Called");
  final _googleSignIn = GoogleSignIn(
    clientId:
        "217625880670-6r4cks3gl8jg5d4ogekcg8oe3u2m8qso.apps.googleusercontent.com",
    // serverClientId:
    //     "979323911248-7da5inc79hfg6j00a2cq7lumnptu3c5t.apps.googleusercontent.com"
  );
  var result = await _googleSignIn.signOut();
  print("Result: $result");
}
