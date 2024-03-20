import 'package:intl/intl.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_six_screen/verification_six_screen.dart';

import 'controller/verification_seven_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class VerificationSevenScreen extends StatefulWidget {
  final profileImage;

  const VerificationSevenScreen({
    Key? key,
    this.profileImage,
  }) : super(key: key);

  @override
  _VerificationSevenScreenState createState() =>
      _VerificationSevenScreenState();
}

class _VerificationSevenScreenState extends State<VerificationSevenScreen> {
  final createProfileController = Get.put(VerificationSevenController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
      key: _formKey,
      child: Scaffold(
          body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 56.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup1025,
                        height: 5.v,
                        width: 352.h),
                    SizedBox(height: 40.v),
                    Text("msg_tell_us_about_yourself".tr,
                        style: theme.textTheme.titleLarge),
                    SizedBox(height: 7.v),
                    Text("msg_help_us_personalize".tr,
                        style: CustomTextStyles.labelLargeGray40005),
                    SizedBox(height: 37.v),
                    Text("lbl_your_gender".tr,
                        style: CustomTextStyles.titleSmallMontserratGray90001),
                    SizedBox(height: 5.v),
                    DropdownButtonFormField<String>(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please select an option';
                        }
                        return null; // Return null if the value is valid
                      },
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(
                              left: 20.h, top: 17.v, bottom: 17.v),
                          filled: true,
                          fillColor: appTheme.lightGreen5004,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(35),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide(color: Colors.white),
                          )),
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(25),
                      value: createProfileController.gender.toString(),
                      hint: Text(
                        "lbl_select_gender".tr,
                        style: CustomTextStyles.titleSmallGray50006,
                      ),
                      items: createProfileController.gendersList.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (value) {
                        createProfileController.selectGender(value);
                        // ignore: invalid_use_of_protected_member
                        // _formController.floorList.value;
                      },
                    ),
                    SizedBox(height: 5.v),
                    // CustomDropDown(
                    //     validator: (value) {
                    //       if (value == null) {
                    //         return 'Please select a gender';
                    //       }
                    //       return null;
                    //     },
                    //     icon: Container(
                    //         margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
                    //         child: CustomImageView(
                    //             imagePath: ImageConstant.imgArrowdownGray80003,
                    //             height: 16.adaptSize,
                    //             width: 16.adaptSize)),
                    //     hintText: "lbl_select_gender".tr,
                    //     hintStyle: CustomTextStyles.titleSmallGray50006,
                    //     // items: createProfileController.gender.to,
                    //     contentPadding: EdgeInsets.only(
                    //         left: 20.h, top: 17.v, bottom: 17.v),
                    //     onChanged: (value) {
                    //       createProfileController.selectGender(value);
                    //     }),

                    SizedBox(height: 26.v),
                    Text("lbl_date_of_birth".tr,
                        style: CustomTextStyles.titleSmallMontserratGray90001),
                    SizedBox(height: 7.v),
                    GestureDetector(
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                          if (pickedDate != null) {
                            createProfileController.selectedDate.value =
                                pickedDate;
                          }
                        },
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 17.v),
                            decoration: AppDecoration.fillLightGreen.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder25),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Obx(() => Text(
                                        createProfileController
                                                .selectedDate.value
                                                ?.toString() ??
                                            '', // Use toString() to convert DateTime to String
                                        style: CustomTextStyles
                                            .titleSmallGray50006,
                                      )),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgCalendar,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize)
                                ]))),
                    SizedBox(height: 48.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Expanded(
                          child: Padding(
                              padding: EdgeInsets.only(right: 4.h),
                              child: OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                      left: 1.h,
                                      top: 1.v,
                                      right: 1.h,
                                      bottom: 1.v),
                                  strokeWidth: 1.h,
                                  gradient: LinearGradient(
                                      begin: Alignment(1.03, 1.11),
                                      end: Alignment(0.07, -0.41),
                                      colors: [
                                        appTheme.green70002,
                                        theme.colorScheme.primary
                                      ]),
                                  corners: Corners(
                                      topLeft: Radius.circular(24),
                                      topRight: Radius.circular(24),
                                      bottomLeft: Radius.circular(24),
                                      bottomRight: Radius.circular(24)),
                                  child: CustomOutlinedButton(
                                      text: "lbl_previous".tr)))),
                      Expanded(
                          child: CustomElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Form validation successful
                                  if (createProfileController
                                      .verificationSevenModelObj
                                      .value
                                      .chooseYourDate
                                      .value
                                      .isEmpty) {
                                    Get.snackbar(
                                        "Error", "Please select date of birth");
                                  } else {
                                    // Date of birth is selected
                                    Get.lazyPut(() => VerificationSixScreen(
                                          profileImage: widget.profileImage,
                                        ));
                                    Get.toNamed(
                                        AppRoutes.verificationSixScreen);
                                  }
                                }
                              },
                              height: 48.v,
                              text: "lbl_proceed".tr,
                              margin: EdgeInsets.only(left: 4.h),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientGreenToPrimaryTL24Decoration))
                    ]),
                    SizedBox(height: 5.v)
                  ]))),
    ));
  }
}

  /// Section Widget
  // Widget _buildSix() {
  //   return;
  // }

  /// Section Widget
  // Widget _buildFrame() {
  //   return 
  // }

  /// Displays a date picker dialog and updates the selected date in the
  /// [verificationSevenModelObj] object of the current [chooseYourDate] if the user
  /// selects a valid date.
  ///
  /// This function returns a `Future` that completes with `void`.
  // Future<void> onTapSix() async {
  //   DateTime? dateTime = await showDatePicker(
  //       context: Get.context!,
  //       initialDate: controller
  //           .verificationSevenModelObj.value.selectedChooseYourDate!.value,
  //       firstDate: DateTime(1970),
  //       lastDate: DateTime(
  //           DateTime.now().year, DateTime.now().month, DateTime.now().day));
  //   if (dateTime != null) {
  //     controller.verificationSevenModelObj.value.selectedChooseYourDate!.value =
  //         dateTime;
  //     controller.verificationSevenModelObj.value.chooseYourDate.value =
  //         dateTime.format(dateTimeFormatPattern);
  //   }
  // }

