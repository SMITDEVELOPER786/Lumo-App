import '../controller/verification_six_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<VerificationSixController>();
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isSelected = !isSelected;
        // Update the UI
        controller.update();
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70.adaptSize,
              width: 70.adaptSize,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: userprofileItemModelObj.userImage!.value,
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      radius: BorderRadius.circular(
                        40.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  isSelected == true
                      ? Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 163, 226, 15)
                                .withOpacity(0.8),
                          ),
                          child: Image.asset(
                              userprofileItemModelObj.userImage1!.value),
                        )
                      : Container()
                  // CustomImageView(
                  //   color: Colors.transparent,
                  //   imagePath: userprofileItemModelObj.userImage1!.value,
                  //   height: 24.adaptSize,
                  //   width: 24.adaptSize,
                  //   alignment: Alignment.bottomRight,
                  // ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Align(
              alignment: Alignment.center,
              child: Obx(
                () => Text(
                  userprofileItemModelObj.empireBaby!.value,
                  style: CustomTextStyles.titleSmallGray80003,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
