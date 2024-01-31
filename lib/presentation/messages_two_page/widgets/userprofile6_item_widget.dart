import 'package:muhammad_zubair_s_application4/presentation/messages_one_screen/messages_one_screen.dart';

import '../controller/messages_two_controller.dart';
import '../models/userprofile6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Userprofile6ItemWidget extends StatelessWidget {
  Userprofile6ItemWidget(
    this.userprofile6ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile6ItemModel userprofile6ItemModelObj;

  var controller = Get.find<MessagesTwoController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.lazyPut(() => MessagesOneScreen());
        Get.to(()=> MessagesOneScreen());
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillLime10011.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Obx(
                () => CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  child: CustomImageView(
                    imagePath: userprofile6ItemModelObj.closeButton!.value,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 9.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile6ItemModelObj.titleText!.value,
                      style: CustomTextStyles.labelLargeGray80001SemiBold,
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Obx(
                    () => Text(
                      userprofile6ItemModelObj.messageText!.value,
                      style: CustomTextStyles.bodySmallInterGray60007,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 12.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Obx(
                      () => Text(
                        userprofile6ItemModelObj.timeText!.value,
                        style: CustomTextStyles.labelMediumGray50001,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 14.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5,
                      ),
                      child: Obx(
                        () => Text(
                          userprofile6ItemModelObj.notificationCount!.value,
                          style: CustomTextStyles.labelMediumSemiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
