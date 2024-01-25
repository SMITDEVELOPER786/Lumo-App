import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "iPhone 14 & 15 Pro - One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.iphone1415ProOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up- Active".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpActiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account creation One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.accountCreationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account creation".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountCreationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationSevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.verificationFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Verification Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verificationTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homepageOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homepageTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Live One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "PK".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.pkScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Leaderboard Three - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.leaderboardThreeTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Search".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.searchScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Leaderboard".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.leaderboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Leaderboard Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.leaderboardTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Gift One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.giftOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Messages - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.messagesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Messages One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.messagesOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stream".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.streamScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Audio-Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.audioLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Multi-Live".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.multiLiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Filter".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.filterScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Level".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.levelScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My wallet".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myWalletScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Mall".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mallScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Mall One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mallOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Withdrawal".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.withdrawalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Blocked list".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.blockedListScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Live data".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.liveDataScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Edit profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Guardian One - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.guardianOneTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose guardian One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chooseGuardianOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose guardian".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chooseGuardianScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Guardian".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.guardianScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vip Max ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipMaxScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Vip 7 ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vip7Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VIP One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.vipOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Admin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.adminScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Apply for hosting".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.applyForHostingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Admin One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.adminOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Request".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.requestScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Salaries".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.salariesScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
