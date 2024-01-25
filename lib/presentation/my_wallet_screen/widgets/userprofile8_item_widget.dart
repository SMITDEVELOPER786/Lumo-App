import '../controller/my_wallet_controller.dart';
import '../models/userprofile8_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile8ItemWidget extends StatelessWidget {
  Userprofile8ItemWidget(
    this.userprofile8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile8ItemModel userprofile8ItemModelObj;

  var controller = Get.find<MyWalletController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.fillLime10009.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 79.v,
              width: 171.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder5,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup56,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Obx(
                () => CustomImageView(
                  imagePath: userprofile8ItemModelObj.userImage!.value,
                  height: 79.v,
                  width: 171.h,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 7.v),
            SizedBox(
              height: 17.v,
              width: 47.h,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPngegg51,
                    height: 17.v,
                    width: 24.h,
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(
                      () => Text(
                        userprofile8ItemModelObj.text5000!.value,
                        style: CustomTextStyles.bodySmallInterGray7000710,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Obx(
              () => Text(
                userprofile8ItemModelObj.textUSD100!.value,
                style: CustomTextStyles.titleSmallGray8000114,
              ),
            ),
            SizedBox(height: 9.v),
          ],
        ),
      ),
    );
  }
}
