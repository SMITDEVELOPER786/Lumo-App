import 'dart:io';

import 'package:muhammad_zubair_s_application4/presentation/host_request.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_seven_screen/verification_seven_screen.dart';

import 'controller/verification_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_outlined_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:image_picker/image_picker.dart';

// ignore_for_file: must_be_immutable
class VerificationFourScreen extends StatefulWidget {
  const VerificationFourScreen({Key? key}) : super(key: key);

  @override
  _VerificationFourScreenState createState() => _VerificationFourScreenState();
}

class _VerificationFourScreenState extends State<VerificationFourScreen> {
  final VerificationFourController imageandnameControllen =
      Get.put(VerificationFourController());

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  File? imageFile;
  late String _selectedValue1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder(
         init: imageandnameControllen,
        builder: (controller) {
          return Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            width: SizeUtils.width,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 56.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup1025,
                        height: 5.v,
                        width: 352.h,
                      ),
                      SizedBox(height: 40.v),
                      Text(
                        "msg_upload_your_profile".tr,
                        style: CustomTextStyles.titleLargeGray90008,
                      ),
                      SizedBox(height: 7.v),
                      Text(
                        "msg_enter_your_preferred".tr,
                        style: CustomTextStyles.labelLargeGray40005,
                      ),
                      SizedBox(height: 22.v),
                      Container(
                        height: 120.adaptSize,
                        width: 120.adaptSize,
                        // padding: EdgeInsets.all(28.h),
                        decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder60,
                        ),
                        // ignore: unnecessary_null_comparison
                        child: imageandnameControllen.imageFile.value != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(60),
                                child: Image.file(
                                  imageandnameControllen.imageFile.value!,
                                  fit: BoxFit.cover,
                                  height: 64.adaptSize,
                                  width: 64.adaptSize,
                                ),
                              )
                            : CustomImageView(
                                onTap: () {
                                  imageandnameControllen.pickImageFromGallery();
                                },
                                imagePath: ImageConstant.imgCameraWhiteA700,
                                height: 64.adaptSize,
                                width: 64.adaptSize,
                                alignment: Alignment.center,
                              ),
                      ),
                      SizedBox(height: 28.v),
                      CustomTextFormField(
                        controller: imageandnameControllen.userNameController,
                        hintText: "lbl_username".tr,
                        hintStyle: CustomTextStyles.titleSmallGray700,
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a user name.';
                          }
                          // Add more validation logic as per your requirements
                          return null; // Return null if the input is valid
                        },
                      ),
                      SizedBox(height: 43.v),
                      _buildFrame(),
                      SizedBox(height: 5.v),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );

        }
      
        
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: OutlineGradientButton(
              padding: EdgeInsets.only(
                left: 1.h,
                top: 1.v,
                right: 1.h,
                bottom: 1.v,
              ),
              strokeWidth: 1.h,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 163, 226, 15)
                      .withOpacity(0.8), // Start with yellow at the top
                  Color.fromARGB(
                      255, 43, 112, 45), // Transition to green at the bottom
                ],
                stops: [0.2, 1.0],
              ),
              corners: Corners(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              child: CustomOutlinedButton(
                onPressed: () {
                  Get.back();
                },
                text: "lbl_previous".tr,
              ),
            ),
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (imageandnameControllen.imageFile == null) {
                  Get.snackbar("Error", "Please select profile image");
                } else {
                  Get.lazyPut(() => VerificationSevenScreen());
                  Get.toNamed(AppRoutes.verificationSevenScreen);
                }
              }
            },
            height: 48.v,
            text: "lbl_proceed".tr,
            margin: EdgeInsets.only(left: 4.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL24Decoration,
          ),
        ),
      ],
    );
  }
}
