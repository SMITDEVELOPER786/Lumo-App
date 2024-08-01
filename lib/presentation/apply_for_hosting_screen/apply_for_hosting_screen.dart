import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/apply_for_hosting_screen/apply_hosting_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/apply_agency_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';
import 'controller/apply_for_hosting_controller.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class ApplyForHostingScreen extends StatefulWidget {
  const ApplyForHostingScreen({Key? key}) : super(key: key);

  @override
  _ApplyForHostingScreenState createState() => _ApplyForHostingScreenState();
}

class _ApplyForHostingScreenState extends State<ApplyForHostingScreen> {
  final ApplyHostingController applyhostingcontroller = Get.put(ApplyHostingController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 39.v),
            child: Container(
      height: 292.v,
      width: 353.h,
      margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 5.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 45.h, vertical: 36.v),
              decoration: AppDecoration.fillLightGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 17.v),
                  Text(
                    "msg_host_identity_authentication".tr,
                    style: CustomTextStyles.titleSmallGray80001SemiBold,
                  ),
                  SizedBox(height: 25.v),
                  CustomTextFormField(
                    fillColor: Colors.white,
                    controller: applyhostingcontroller.invitationcode,
                    hintText: "lbl_invitation_code".tr,
                    hintStyle: CustomTextStyles.titleSmallGray700,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffixConstraints: BoxConstraints(maxHeight: 52.v),
                    contentPadding:
                        EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v),
                  ),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                    onPressed: () {
                      applyhostingcontroller.joinAgency();
                    },
                    text: "lbl_proceed".tr,
                    buttonStyle: CustomButtonStyles.none,
                    decoration:
                        CustomButtonStyles.gradientGreenToPrimaryTL25Decoration,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: UserController.user.data!.profileId!.profileImage,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(28.h),
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 50,
      leadingWidth: 44.h,
      leading: GestureDetector(
        onTap: () {
          onTapArrowLeft();
        },
        child: Icon(Icons.arrow_back_ios),
      ),
      centerTitle: true,
      title: Text("lbl_apply_hosting".tr),
    );
  }

  /// Section Widget
  // Widget _buildScrollView(_agencycontroller) {
  //   return ;
  // }

  /// Navigates to the previous screen.
  void onTapArrowLeft() {
    Get.back();
  }
}
