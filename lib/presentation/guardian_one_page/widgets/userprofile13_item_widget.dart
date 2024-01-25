import '../controller/guardian_one_controller.dart';
import '../models/userprofile13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile13ItemWidget extends StatelessWidget {
  Userprofile13ItemWidget(
    this.userprofile13ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile13ItemModel userprofile13ItemModelObj;

  var controller = Get.find<GuardianOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110.v,
      width: 139.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.amber10001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Container(
                height: 110.v,
                width: 138.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 42.h,
                  vertical: 12.v,
                ),
                decoration: AppDecoration.fillAmber.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder5,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgPngegg51,
                      height: 14.v,
                      width: 20.h,
                      alignment: Alignment.bottomLeft,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Obx(
                        () => Text(
                          userprofile13ItemModelObj.userText!.value,
                          style:
                              CustomTextStyles.labelMediumGray80001SemiBold_2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange5001,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderTL5,
              ),
              child: Container(
                height: 73.v,
                width: 139.h,
                decoration: AppDecoration.fillOrange5001.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL5,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 64.v,
                        width: 138.h,
                        padding: EdgeInsets.all(3.h),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imageNotFound,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Obx(
                          () => CustomImageView(
                            imagePath:
                                userprofile13ItemModelObj.checkmarkImage!.value,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            alignment: Alignment.topRight,
                          ),
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath: userprofile13ItemModelObj.userImage!.value,
                        height: 55.v,
                        width: 52.h,
                        alignment: Alignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
