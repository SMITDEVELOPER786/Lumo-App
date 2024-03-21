import 'package:muhammad_zubair_s_application4/presentation/verification_two_screen/verification_two_screen.dart';

import 'controller/create_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/validation_functions.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  @override
  _CreatePasswordScreenState createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {

  var controller = Get.put(CreatePasswordController());

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
                                horizontal: 18.h, vertical: 34.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_create_new_password".tr,
                                      style:
                                          CustomTextStyles.titleLargeGray90005),
                                  SizedBox(height: 5.v),
                                  Container(
                                      width: 321.h,
                                      margin: EdgeInsets.only(right: 33.h),
                                      child: Text("msg_remember_to_use".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelLargeGray40005)),
                                  SizedBox(height: 46.v),
                                  Obx(() => CustomTextFormField(
                                      controller:
                                          controller.newpasswordController,
                                      hintText: "lbl_new_password".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray40002,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 26.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h,
                                          top: 17.v,
                                          bottom: 17.v))),
                                  SizedBox(height: 19.v),
                                  Obx(() => CustomTextFormField(
                                      controller:
                                          controller.confirmpasswordController,
                                      hintText: "msg_confirm_password".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray40002,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword1.value =
                                                !controller
                                                    .isShowPassword1.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 26.h, 18.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 16.adaptSize,
                                                  width: 16.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 52.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword1.value,
                                      contentPadding: EdgeInsets.only(
                                          left: 20.h,
                                          top: 17.v,
                                          bottom: 17.v))),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                    onPressed: () async {
                                      var newpassword =controller.newpasswordController.value.text;
                                      var confirmpassword = controller.confirmpasswordController.value.text; 
                                        if (_formKey.currentState!.validate()) {
                                          if(newpassword!=confirmpassword){
                                             Get.snackbar("Error", "Password does'not match");
                                          }
                                          else{
                                           
                                           await controller.updatePassword(newpassword, context);

                                          }

                                      }
                //                           Get.lazyPut(()=>VerificationTwoScreen());
                // Get.toNamed(AppRoutes.verificationTwoScreen);
                                    },
                                      text: "lbl_confirm".tr,
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
