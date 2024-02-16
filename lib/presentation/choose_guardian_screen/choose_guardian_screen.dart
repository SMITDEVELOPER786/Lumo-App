import 'controller/choose_guardian_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';


class ChooseGuardianScreen extends StatefulWidget {
  const ChooseGuardianScreen({Key? key}) : super(key: key);

  @override
  State<ChooseGuardianScreen> createState() => _ChooseGuardianScreenState();
}

class _ChooseGuardianScreenState extends State<ChooseGuardianScreen> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var controller = Get.put(ChooseGuardianController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: SizedBox(
                height: 1012.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    _buildThirtyMinAgoStack(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 67.v,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.customBorderTL25,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 86.h),
                              child: Row(
                                children: [
                                  Container(
                                    width: 25.h,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 4.h,
                                      vertical: 1.v,
                                    ),
                                    decoration: AppDecoration
                                        .gradientOrangeToYellow
                                        .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder1,
                                    ),
                                    child: Text(
                                      "lbl_lv_13".tr,
                                      style: CustomTextStyles
                                          .interWhiteA700SemiBold,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgMappinLime10007,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_illinois_texas".tr,
                                      style: CustomTextStyles
                                          .bodySmallInterGray60011,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgConfettiLime10007,
                                    height: 12.adaptSize,
                                    width: 12.adaptSize,
                                    margin: EdgeInsets.only(left: 5.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "lbl_23".tr,
                                      style: CustomTextStyles
                                          .bodySmallInterGray60011,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 9.v),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_10k".tr,
                                      style: CustomTextStyles
                                          .labelMediumGray80001SemiBold_1,
                                    ),
                                    SizedBox(height: 5.v),
                                    Text(
                                      "lbl_followers".tr,
                                      style:
                                          CustomTextStyles.interBluegray40001,
                                    ),
                                  ],
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
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_200k".tr,
                                        style: CustomTextStyles
                                            .labelMediumGray80001SemiBold_1,
                                      ),
                                      SizedBox(height: 5.v),
                                      Text(
                                        "lbl_following".tr,
                                        style:
                                            CustomTextStyles.interBluegray40001,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 9.v),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 20.h,
                          top: 291.v,
                          right: 262.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgEllipse3364x64,
                              height: 64.adaptSize,
                              width: 64.adaptSize,
                              radius: BorderRadius.circular(
                                32.h,
                              ),
                            ),
                            SizedBox(height: 10.v),
                            Text(
                              "lbl_sarah_wegan".tr,
                              style: CustomTextStyles.titleMediumGray90005,
                            ),
                            SizedBox(height: 2.v),
                            Text(
                              "lbl_id_12345678".tr,
                              style: CustomTextStyles.labelMediumGray50016,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildLevelCounterColumn(),
                            SizedBox(height: 12.v),
                            _buildFansClubColumn(),
                            SizedBox(height: 12.v),
                            _buildChooseGuardianColumn(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyMinAgoButton() {
    return CustomElevatedButton(
      height: 25.v,
      text: "lbl_30_min_ago".tr,
      margin: EdgeInsets.only(right: 10.h),
      buttonStyle: CustomButtonStyles.fillGrayB,
      buttonTextStyle: CustomTextStyles.bodySmallInterWhiteA700,
    );
  }

  /// Section Widget
  Widget _buildThirtyMinAgoStack() {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        height: 367.v,
        width: double.maxFinite,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle34624950,
              height: 367.v,
              width: 393.h,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 292.h,
                  right: 8.h,
                  bottom: 62.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        height: 50.v,
                        width: 61.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 24.v,
                                width: 26.h,
                                margin: EdgeInsets.only(
                                  left: 16.h,
                                  top: 2.v,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    12.h,
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
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 50.v,
                                width: 61.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPngtreeGamesGolden,
                                      height: 50.v,
                                      width: 61.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: 24.h,
                                          top: 6.v,
                                        ),
                                        child: Text(
                                          "lbl_s".tr,
                                          style: CustomTextStyles
                                              .titleSmallLightgreen5004,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildThirtyMinAgoButton(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLevelCounterColumn() {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillLightgreen5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_level_10".tr,
                  style: CustomTextStyles.labelMediumGray80003_1,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_1200xp".tr,
                        style: CustomTextStyles.labelMediumff4c4c4c,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_1800xp".tr,
                        style: CustomTextStyles.labelSmallffb9b9b9,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          SizedBox(
            height: 8.v,
            width: 322.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    height: 7.v,
                    width: 321.h,
                    child: ClipRRect(
                      child: LinearProgressIndicator(
                        value: 0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 8.v,
                    width: 168.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        4.h,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFansClubColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillLightgreen5003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 33.v,
                width: 92.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "lbl_fans_club".tr,
                        style: CustomTextStyles.labelLargeGray80001SemiBold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 5.v),
                        child: IntrinsicWidth(
                          child: _buildClubMembersTwenty(
                            clubMembersTwenty: "msg_club_members_20".tr,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 28.v,
                width: 118.h,
                margin: EdgeInsets.only(top: 3.v),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 2.v),
                        child: IntrinsicWidth(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15.v),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_club_members".tr,
                                            style: CustomTextStyles
                                                .labelMediumffa3a3a3,
                                          ),
                                          TextSpan(
                                            text: "lbl_20".tr,
                                            style: CustomTextStyles
                                                .labelMediumff188723,
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Spacer(
                                    flex: 73,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCloseBlueGray100,
                                    height: 23.v,
                                    width: 39.h,
                                    margin: EdgeInsets.only(bottom: 4.v),
                                  ),
                                  Spacer(
                                    flex: 26,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgCloseBlueGray100,
                                    height: 23.v,
                                    width: 39.h,
                                    margin: EdgeInsets.only(bottom: 4.v),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12.v),
                              Divider(
                                color: appTheme.green5002,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    _buildFansClubStack(
                      t: "lbl_t".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.v),
          Divider(
            color: appTheme.green5002,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(right: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_fans_ranking".tr,
                      style: CustomTextStyles.labelLargeGray80001SemiBold,
                    ),
                    SizedBox(height: 5.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "msg_participants_on2".tr,
                            style: CustomTextStyles.labelMediumffa3a3a3,
                          ),
                          TextSpan(
                            text: "lbl_120".tr,
                            style: CustomTextStyles.labelMediumff188723,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildFansClubStack(
                    t: "lbl_t".tr,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseBlueGray100,
                  height: 23.v,
                  width: 39.h,
                  margin: EdgeInsets.symmetric(vertical: 4.v),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: _buildFansClubStack(
                    t: "lbl_t".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        width: 82.h,
        controller: controller.nameEditTextController,
        hintText: "lbl_name".tr,
        hintStyle: CustomTextStyles.labelMediumGray50008,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderEditText() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        controller: controller.genderEditTextController,
        hintText: "lbl_gender".tr,
        hintStyle: CustomTextStyles.labelMediumGray50008,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildDateOfBirthEditText() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        controller: controller.dateOfBirthEditTextController,
        hintText: "lbl_date_of_birth".tr,
        hintStyle: CustomTextStyles.labelMediumGray50008,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguagesSpokenEditText() {
    return Padding(
      padding: EdgeInsets.only(left: 4.h),
      child: CustomTextFormField(
        controller: controller.languagesSpokenEditTextController,
        hintText: "lbl_languages".tr,
        hintStyle: CustomTextStyles.labelMediumGray50008,
        textInputAction: TextInputAction.done,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
        filled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildChooseGuardianColumn() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillLightgreen5001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_personal_information".tr,
              style: CustomTextStyles.titleSmallGray80001SemiBold,
            ),
          ),
          SizedBox(height: 19.v),
          _buildNameEditText(),
          SizedBox(height: 13.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_male".tr,
              style: CustomTextStyles.labelLargeGray8000113,
            ),
          ),
          SizedBox(height: 8.v),
          _buildGenderEditText(),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_25_01_1898".tr,
              style: CustomTextStyles.labelLargeGray8000113,
            ),
          ),
          SizedBox(height: 8.v),
          _buildDateOfBirthEditText(),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_english_french".tr,
              style: CustomTextStyles.labelLargeGray8000113,
            ),
          ),
          SizedBox(height: 8.v),
          _buildLanguagesSpokenEditText(),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 42.v,
                  width: 182.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
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
                              margin: EdgeInsets.only(left: 2.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgClose16x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(left: 2.h),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(top: 9.v),
                          child: IntrinsicWidth(
                            child: _buildHometownColumn(
                              hometownText: "msg_emojis_to_describe".tr,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 9.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 40.v,
                  width: 151.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "msg_california_united".tr,
                          style: CustomTextStyles.labelLargeGray8000113,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(top: 8.v),
                          child: IntrinsicWidth(
                            child: _buildHometownColumn(
                              hometownText: "lbl_hometown".tr,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(
            indent: 4.h,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_make_money".tr,
                      style: CustomTextStyles.labelLargeGray8000113,
                    ),
                    SizedBox(height: 8.v),
                    Text(
                      "lbl_bio".tr,
                      style: CustomTextStyles.labelMediumGray50008,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 8.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildClubMembersTwenty({required String clubMembersTwenty}) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_club_members".tr,
                      style: CustomTextStyles.labelMediumffa3a3a3,
                    ),
                    TextSpan(
                      text: "lbl_20".tr,
                      style: CustomTextStyles.labelMediumff188723,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Spacer(
              flex: 73,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray100,
              height: 23.v,
              width: 39.h,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            Spacer(
              flex: 26,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCloseBlueGray100,
              height: 23.v,
              width: 39.h,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
          ],
        ),
        SizedBox(height: 12.v),
        Divider(
          color: appTheme.green5002,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFansClubStack({required String t}) {
    return SizedBox(
      height: 28.v,
      width: 40.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgKlipartz16,
            height: 28.v,
            width: 40.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 12.adaptSize,
              margin: EdgeInsets.only(bottom: 4.v),
              padding: EdgeInsets.symmetric(
                horizontal: 3.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillGreen70001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Text(
                t,
                style: CustomTextStyles.interWhiteA700Medium.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildHometownColumn({required String hometownText}) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 14.v),
                child: Text(
                  hometownText,
                  style: CustomTextStyles.labelMediumGray50008.copyWith(
                    color: appTheme.gray50008,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgArrowRight,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(bottom: 8.v),
              ),
            ],
          ),
        ),
        SizedBox(height: 12.v),
        Divider(),
      ],
    );
  }
}
