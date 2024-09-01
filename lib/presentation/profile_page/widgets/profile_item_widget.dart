import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/about_luma_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/admin_screen/admin_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/apply_for_hosting_screen/apply_for_hosting_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/blocked_list_screen/blocked_list_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/live_data_screen/live_data_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_one_screen/mall_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/apply_agency.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/coins_trading.dart';
import 'package:muhammad_zubair_s_application4/presentation/settings_screen/settings_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';
import 'package:muhammad_zubair_s_application4/presentation/vip_tabbar_view.dart';
import 'package:muhammad_zubair_s_application4/presentation/withdrawal_screen/withdrawal_screen.dart';

import '../../guardian_one_tab_container_screen/guardian_one_tab_container_screen.dart';
import '../controller/profile_controller.dart';
import '../models/profile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:url_launcher/url_launcher.dart';


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
      onTap: profileItemModelObj.vIPCenter1!.value == "Apply agency"
          ? () {
              Get.lazyPut(() => ApplyAgencyScreen());
              Get.to(() => ApplyAgencyScreen());
            }
          : profileItemModelObj.vIPCenter1!.value == "Coins Trading"
              ? () {
                  UserController.user.data?.isReseller == true
                      ? Get.lazyPut(() => CoinsTrading())
                      : Get.snackbar("Error", "Not authorize to send coins");
                  UserController.user.data?.isReseller == true
                      ? Get.to(() => CoinsTrading())
                      : null;
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
                                      Get.lazyPut(
                                          () => ApplyForHostingScreen());
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
                                              Get.lazyPut(
                                                  () => LiveDataScreen());
                                              Get.to(() => LiveDataScreen());
                                            }
                                          : profileItemModelObj
                                                      .vIPCenter1!.value ==
                                                  "VIP"
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
                                                      Get.to(
                                                          () => AdminScreen());
                                                    }
                                                  : profileItemModelObj
                                                              .vIPCenter1!
                                                              .value ==
                                                          "About Lumo"
                                                      ? () {
                                                          Get.lazyPut(() =>
                                                              AboutLumaScreen());
                                                          Get.to(() =>
                                                              AboutLumaScreen());
                                                        }
                                                        : profileItemModelObj
                                                              .vIPCenter1!
                                                              .value ==
                                                          "Facebook"
                                                      ? () {
                                                         _launchURL('https://www.facebook.com/profile.php?id=100069325062678&mibextid=ZbWKwL');
                                                        }
                                                         : profileItemModelObj
                                                              .vIPCenter1!
                                                              .value ==
                                                          "Instagram"
                                                      ? () {
                                                         _launchURL('https://www.instagram.com/lumo.live?igsh=MXN4MWhhaWFjaWoxYg==');
                                                         
                                                        }
                                                         : profileItemModelObj
                                                              .vIPCenter1!
                                                              .value ==
                                                          "Tik Tok"
                                                      ? () {
                                                         _launchURL('https://www.tiktok.com/@lumo.live?_t=8pGfGcA6n4c&_r=1');
                                                         
                                                        }
                                                         : profileItemModelObj
                                                              .vIPCenter1!
                                                              .value ==
                                                          "YouTube"
                                                      ? () {
                                                         _launchURL('https://www.youtube.com/@LumoLive-app');
                                                         
                                                        }
                                                      : () {},
      child: Container(
        padding: EdgeInsets.symmetric(
            // horizontal: 25.h,
            // vertical: 1.v,
            ),
        decoration: AppDecoration.white.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder5,
            image: DecorationImage(
                image: AssetImage(profileItemModelObj.vIPCenter!.value),
                fit: BoxFit.fitWidth)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // SizedBox(height: 10.v),
            Obx(
              () => Container(
                color: Colors.white,
                child: Center(
                  child: Text(
                    profileItemModelObj.vIPCenter1!.value,
                    style: CustomTextStyles.labelMediumRobotoBlack900,
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.v),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    Get.snackbar('Url Error', 'Could not launch $url');
    throw 'Could not launch $url';
  }
}
}
