import '../controller/mall_controller.dart';
import '../models/chatbubbles_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ChatbubblesItemWidget extends StatelessWidget {
  ChatbubblesItemWidget(
    this.chatbubblesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatbubblesItemModel chatbubblesItemModelObj;

  var controller = Get.find<MallController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 99.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: appTheme.lime10004,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder5,
          ),
          child: Container(
            height: 90.v,
            width: 99.h,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 5.v,
            ),
            decoration: AppDecoration.fillLime10004.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLovepikCom380,
                  height: 56.adaptSize,
                  width: 56.adaptSize,
                  alignment: Alignment.topCenter,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClose16x16,
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                        ),
                        SizedBox(height: 11.v),
                        Obx(
                          () => Text(
                            chatbubblesItemModelObj.chatBubblesText!.value,
                            style: CustomTextStyles.labelMediumGray80001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
