import 'controller/gift_one_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/gift_one_page/gift_one_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class GiftOneTabContainerScreen extends StatefulWidget {
  const GiftOneTabContainerScreen({Key? key}) : super(key: key);

  @override
  _GiftOneTabContainerScreenState createState() =>
      _GiftOneTabContainerScreenState();
}

class _GiftOneTabContainerScreenState
    extends State<GiftOneTabContainerScreen> {
  final GiftOneTabContainerController controller =
      GiftOneTabContainerController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: SizedBox(
            height: 808.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 15.v,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup744,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlayWhiteA700,
                          height: 64.adaptSize,
                          width: 64.adaptSize,
                        ),
                        SizedBox(height: 44.v),
                        _buildMarylan(),
                        SizedBox(height: 17.v),
                        _buildTabs(),
                      ],
                    ),
                  ),
                ),
                _buildTabview(),
                _buildTabBarView(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMarylan() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 155.v,
            bottom: 51.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_marylan2".tr,
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 9.v),
              Text(
                "msg_check_out_this_stunning".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 3.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgLinkedinWhiteA700,
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
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            SizedBox(height: 3.v),
            Text(
              "lbl_900".tr,
              style: CustomTextStyles.bodySmallInterWhiteA70012,
            ),
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            SizedBox(height: 3.v),
            Text(
              "lbl_12k".tr,
              style: CustomTextStyles.bodySmallInterWhiteA70012,
            ),
            SizedBox(height: 14.v),
            CustomImageView(
              imagePath: ImageConstant.imgShareWhiteA700,
              height: 40.adaptSize,
              width: 40.adaptSize,
            ),
            SizedBox(height: 3.v),
            Text(
              "lbl_200".tr,
              style: CustomTextStyles.bodySmallInterWhiteA70012,
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabs() {
    return SizedBox(
      height: 68.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 68.v,
              width: 353.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 353.h,
              padding: EdgeInsets.symmetric(
                horizontal: 26.h,
                vertical: 9.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder30,
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgFrame238788,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHome,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(
                      top: 11.v,
                      bottom: 13.v,
                    ),
                  ),
                  Spacer(
                    flex: 31,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVuesaxLinearDiscover,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_explore".tr,
                          style:
                              CustomTextStyles.labelMediumMontserratGreen70002,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUploadLime10008,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 29,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUploadBlueGray400,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 12.v),
                  ),
                  Spacer(
                    flex: 39,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLock,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 12.v),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 20.v,
      width: 374.h,
      margin: EdgeInsets.only(bottom: 307.v),
      decoration: BoxDecoration(
        color: appTheme.lime5004,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20.h),
        ),
      ),
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.green70002,
        labelStyle: TextStyle(
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray60008,
        unselectedLabelStyle: TextStyle(
          fontSize: 11.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        indicatorColor: appTheme.green70002,
        tabs: [
          Tab(
            child: Text(
              "lbl_popular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_regular".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_new".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_valentine".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_luxury".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_grand".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_super_heroe".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView() {
    return Container(
      margin: EdgeInsets.only(top: 501.v),
      height: 307.v,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [
          GiftOnePage(),
          GiftOnePage(),
          GiftOnePage(),
          GiftOnePage(),
          GiftOnePage(),
          GiftOnePage(),
          GiftOnePage(),
        ],
      ),
    );
  }
}
