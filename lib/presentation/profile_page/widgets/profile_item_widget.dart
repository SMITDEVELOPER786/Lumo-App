import 'package:muhammad_zubair_s_application4/presentation/admin_screen/admin_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/apply_for_hosting_screen/apply_for_hosting_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/blocked_list_screen/blocked_list_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_data_screen/live_data_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_one_screen/mall_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/coins_trading.dart';
import 'package:muhammad_zubair_s_application4/presentation/settings_screen/settings_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_one_screen/vip_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_tabbar_view.dart';
import 'package:muhammad_zubair_s_application4/presentation/withdrawal_screen/withdrawal_screen.dart';

import '../../guardian_one_tab_container_screen/guardian_one_tab_container_screen.dart';
import '../../level_screen/level_screen.dart';
import '../../mall_screen/mall_screen.dart';
import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  ProfileItemWidget(
    this.profileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileItemModel profileItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: profileItemModelObj.vIPCenter1!.value == "Coins Trading"
          ? () {
              Get.lazyPut(() => CoinsTrading());
              Get.to(() => CoinsTrading());
            }
          : profileItemModelObj.vIPCenter1!.value == "Mall"
              ? () {
                  Get.lazyPut(() => MallOneScreen());
                  Get.to(() => MallOneScreen());
                }
              : profileItemModelObj.vIPCenter1!.value == "Guardian"
                  ? () {
                      Get.lazyPut(() => GuardianOneTabContainerScreen());
                      Get.to(() => GuardianOneTabContainerScreen());
                    }
                  : profileItemModelObj.vIPCenter1!.value == "Block List"
                      ? () {
                          Get.lazyPut(() => BlockedListScreen());
                          Get.to(() => BlockedListScreen());
                        }
                      : profileItemModelObj.vIPCenter1!.value == "Settings"
                          ? () {
                              Get.lazyPut(() => SettingsScreen());
                              Get.to(() => SettingsScreen());
                            }
                          : profileItemModelObj.vIPCenter1!.value ==
                                  "Apply hosting"
                              ? () {
                                  Get.lazyPut(() => ApplyForHostingScreen());
                                  Get.to(() => ApplyForHostingScreen());
                                }
                              : profileItemModelObj.vIPCenter1!.value ==
                                      "Withdrawal"
                                  ? () {
                                      Get.lazyPut(() => WithdrawalScreen());
                                      Get.to(() => WithdrawalScreen());
                                    }
                                  : profileItemModelObj.vIPCenter1!.value ==
                                          "Live data"
                                      ? () {
                                          Get.lazyPut(() => LiveDataScreen());
                                          Get.to(() => LiveDataScreen());
                                        }
                                      : profileItemModelObj.vIPCenter1!.value ==
                                              "VIP Center"
                                          ? () {
                                              Get.lazyPut(
                                                  () => VipTabbarView());
                                              Get.to(() => VipTabbarView());
                                            }
                                          : profileItemModelObj
                                                      .vIPCenter1!.value ==
                                                  "Admin"
                                              ? () {
                                                  Get.lazyPut(
                                                      () => AdminScreen());
                                                  Get.to(() => AdminScreen());
                                                }
                                              : () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillLightGreen.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: profileItemModelObj.vIPCenter!.value,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            SizedBox(height: 8.v),
            Obx(
              () => Center(
                child: Text(
                  profileItemModelObj.vIPCenter1!.value,
                  style: CustomTextStyles.labelMediumGray8000311,
                ),
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
