import '../controller/my_wallet_controller.dart';
import '../models/userprofile7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile7ItemWidget extends StatelessWidget {
  Userprofile7ItemWidget(
    this.userprofile7ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile7ItemModel userprofile7ItemModelObj;

  var controller = Get.find<MyWalletController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.fillGreen50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: 308.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile7ItemModelObj.userImage!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 10.v,
              bottom: 10.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile7ItemModelObj.userName!.value,
                    style: CustomTextStyles.labelMediumGray8000111,
                  ),
                ),
                SizedBox(height: 1.v),
                Obx(
                  () => Text(
                    userprofile7ItemModelObj.userID!.value,
                    style: CustomTextStyles.labelSmallGreen400,
                  ),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            height: 22.v,
            width: 67.h,
            text: "lbl_buy".tr,
            margin: EdgeInsets.only(
              left: 72.h,
              top: 13.v,
              bottom: 13.v,
            ),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientGreenToPrimaryTL10Decoration,
            buttonTextStyle: CustomTextStyles.labelMediumSemiBold_1,
          ),
        ],
      ),
    );
  }
}
