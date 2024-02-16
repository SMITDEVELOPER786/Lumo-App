import '../controller/mall_controller.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class Viewhierarchy1ItemWidget extends StatelessWidget {
  Viewhierarchy1ItemWidget(
    this.viewhierarchy1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Viewhierarchy1ItemModel viewhierarchy1ItemModelObj;

  var controller = Get.find<MallController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 136.v,
      width: 172.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 14.v),
              decoration: AppDecoration.fillLime10010.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    height: 18.v,
                    width: 99.h,
                    margin: EdgeInsets.only(top: 89.v),
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPngegg51,
                          height: 17.v,
                          width: 24.h,
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_10_500".tr,
                                  style: CustomTextStyles.labelLargeff3a3939,
                                ),
                                TextSpan(
                                  text: "lbl_7_days".tr,
                                  style: CustomTextStyles.labelMediumff908b8b,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 43.h,
                    margin: EdgeInsets.only(top: 92.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.gradientGreenToPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Obx(
                      () => Text(
                        viewhierarchy1ItemModelObj.textProp2!.value,
                        style: CustomTextStyles.interWhiteA700Bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange5002,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.customBorderTL8,
              ),
              child: Container(
                height: 90.v,
                width: 172.h,
                decoration: AppDecoration.fillOrange5002.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL8,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: viewhierarchy1ItemModelObj.imageProp2!.value,
                        fit: BoxFit.cover,
                        // height: 29.v,
                        width: 80.h,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath: viewhierarchy1ItemModelObj.imageProp3!.value,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          right: 5.h,
                        ),
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
