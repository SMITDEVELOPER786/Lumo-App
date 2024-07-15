import 'package:muhammad_zubair_s_application4/presentation/account_creation_screen/account_creation_screen.dart';

import 'controller/account_creation_one_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_drop_down.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class AccountCreationOneScreen extends GetWidget<AccountCreationOneController> {
  AccountCreationOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 16.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup1025,
                                      height: 5.v,
                                      width: 352.h),
                                  SizedBox(height: 40.v),
                                  Text("msg_verify_your_account".tr,
                                      style: theme.textTheme.titleLarge),
                                  SizedBox(height: 6.v),
                                  Container(
                                      width: 283.h,
                                      margin: EdgeInsets.only(right: 69.h),
                                      child: Text("msg_select_your_country".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelLargeGray40005)),
                                  SizedBox(height: 23.v),
                                  CustomDropDown(
                                      icon: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 18.v, 20.h, 18.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgArrowdownGray80003,
                                              height: 16.adaptSize,
                                              width: 16.adaptSize)),
                                      hintText: "lbl_select_country".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray700,
                                      items: controller
                                          .accountCreationOneModelObj
                                          .value
                                          .dropdownItemList!
                                          .value,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h, top: 17.v, bottom: 17.v),
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      }),
                                  SizedBox(height: 20.v),
                                  Obx(() => CustomPhoneNumber(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a phone number.';
                                        }
                                        // Add more validation logic as per your requirements
                                        return null; // Return null if the input is valid
                                      },
                                      country: controller.selectedCountry.value,
                                      controller:
                                          controller.phoneNumberController,
                                      onTap: (Country value) {
                                        controller.selectedCountry.value =
                                            value;
                                      })),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          // If the form is valid, proceed with the action
                                          Get.lazyPut(
                                              () => AccountCreationScreen());
                                          Get.toNamed(
                                              AppRoutes.accountCreationScreen);
                                        } else {
                                          // If the form is not valid, display error messages or handle invalid input cases
                                          // For example, you can display a snackbar with an error message
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                  'Please correct the errors in the form.'),
                                            ),
                                          );
                                        }
                                        //                         Get.lazyPut(()=>AccountCreationScreen());
                                        // Get.toNamed(AppRoutes.accountCreationScreen);
                                      },
                                      text: "lbl_proceed".tr,
                                      buttonStyle: CustomButtonStyles.none,
                                      decoration: CustomButtonStyles
                                          .gradientGreenToPrimaryTL25Decoration),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 40.v,
        leadingWidth: 392.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVectorBlack900,
            margin: EdgeInsets.fromLTRB(27.h, 4.v, 358.h, 4.v),
            onTap: () {
              onTapVector();
            }));
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }
}
