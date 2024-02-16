import '../controller/withdrawal_controller.dart';
import '../models/userprofile11_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile11ItemWidget extends StatelessWidget {
  Userprofile11ItemWidget(
    this.userprofile11ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile11ItemModel userprofile11ItemModelObj;

  var controller = Get.find<WithdrawalController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 45.v,
        width: 373.h,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 2.v,
                      bottom: 1.v,
                    ),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      decoration: IconButtonStyleHelper.fillTeal,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpWhiteA700,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.v),
                                child: Obx(
                                  () => Text(
                                    userprofile11ItemModelObj
                                        .withdrewText!.value,
                                    style: CustomTextStyles
                                        .titleSmallPoppinsGray80001,
                                  ),
                                ),
                              ),
                              // Obx(
                              //   () => Text(
                              //     userprofile11ItemModelObj.amountText!.value,
                              //     textAlign: TextAlign.right,
                              //     style:
                              //         CustomTextStyles.titleSmallPoppinsLime500,
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(height: 1.v),
                          Obx(
                            () => Text(
                              userprofile11ItemModelObj.timestampText!.value,
                              style: CustomTextStyles.bodySmallPoppinsGray50003,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 290.h,
                  right: 20.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Obx(
                      () => Text(
                        userprofile11ItemModelObj.amountText1!.value,
                        style:
                            CustomTextStyles.titleSmallPoppinsGray80001SemiBold,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Obx(
                      () => Text(
                        userprofile11ItemModelObj.statusText!.value,
                        style: CustomTextStyles.bodySmallPoppinsGreenA70001,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
