import 'controller/explore_one_controller.dart';
import 'models/explore_one_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class ExploreOnePage extends StatelessWidget {
  ExploreOnePage({Key? key})
      : super(
          key: key,
        );

  ExploreOneController controller =
      Get.put(ExploreOneController(ExploreOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup744,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.white.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup744,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Spacer(
                  flex: 73,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlayWhiteA700,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                ),
                SizedBox(height: 18.v),
                _buildMarylan(),
                Spacer(
                  flex: 26,
                ),
                Container(
                  height: 4.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.lime50,
                  ),
                  child: ClipRRect(
                    child: LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: appTheme.lime50,
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

  /// Section Widget
  Widget _buildMarylan() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 182.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_marylan".tr,
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_check_out_this_stunning".tr,
                  style: CustomTextStyles.bodySmallInterWhiteA70012,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinLightGreen5004,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "lbl_united_states".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 46.v,
                width: 40.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle5955,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPluscircle,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_900".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_12k".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              CustomImageView(
                imagePath: ImageConstant.imgShare,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_200".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              CustomIconButton(
                height: 36.adaptSize,
                width: 36.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.gradientGreenToPrimaryTL18,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGridWhiteA700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
