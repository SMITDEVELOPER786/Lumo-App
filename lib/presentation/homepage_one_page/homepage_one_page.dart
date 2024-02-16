import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/homepage_three_page.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_two_screen/homepage_two_screen.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

import '../../widgets/custom_floating_button.dart';
import '../homepage_one_page/widgets/viewhierarchy_item_widget.dart';
import 'controller/homepage_one_controller.dart';
import 'models/homepage_one_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class HomepageOnePage extends StatelessWidget {
  HomepageOnePage({Key? key})
      : super(
          key: key,
        );

  HomepageOneController controller =
      Get.put(HomepageOneController(HomepageOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         appBar: _buildAppBar(),
           bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
        
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillLime,
          child: Column(
            children: [
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Container(
              //     height: 16.adaptSize,
              //     width: 16.adaptSize,
              //     margin: EdgeInsets.only(right: 20.h),
              //     child: Stack(
              //       alignment: Alignment.topRight,
              //       children: [
              //         CustomImageView(
              //           imagePath: ImageConstant.imgBellsimple,
              //           height: 16.adaptSize,
              //           width: 16.adaptSize,
              //           alignment: Alignment.center,
              //         ),
              //         Align(
              //           alignment: Alignment.topRight,
              //           child: Container(
              //             height: 5.adaptSize,
              //             width: 5.adaptSize,
              //             margin: EdgeInsets.only(right: 2.h),
              //             decoration: BoxDecoration(
              //               color: appTheme.redA700,
              //               borderRadius: BorderRadius.circular(
              //                 2.h,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 5.v),
              _buildViewHierarchy(),
            ],
          ),
        ),
      ),
    );
  }


    PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                right: 17.h,
              ),
              child: Row(
                children: [
                  AppbarSubtitleTwo(
                    onTap: (){
                      Get.lazyPut(() => HomepageThreePage());
                      Get.to(()=>HomepageThreePage());
                    },
                    text: "lbl_universe".tr,
                    margin: EdgeInsets.only(bottom: 1.v),
                  ),
                  AppbarSubtitleTwo(
                    onTap: (){
                        Get.lazyPut(() => HomepageTabContainerPage());
                      Get.to(()=>HomepageTabContainerPage());
                    },
                    text: "lbl_popular".tr,
                    margin: EdgeInsets.only(
                      left: 32.h,
                      top: 1.v,
                    ),
                  ),
                  AppbarSubtitleOne(
                    onTap: (){
                       Get.lazyPut(() => HomepageOnePage());
                      Get.to(()=>HomepageOnePage());
                    },
                    text: "lbl_events".tr,
                    margin: EdgeInsets.only(
                      left: 33.h,
                      bottom: 1.v,
                    ),
                  ),
                  AppbarSubtitleTwo(
                    onTap: (){
                        Get.lazyPut(() => HomepageTwoScreen());
                      Get.to(()=>HomepageTwoScreen());
                    },
                    text: "lbl_games".tr,
                    margin: EdgeInsets.only(
                      left: 19.h,
                      bottom: 1.v,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 2.v),
            // AppbarTitleImage(
            //   imagePath: ImageConstant.imgGroup1025Gray30006,
            // ),
          ],
        ),
      ),
      actions: [
          Container(
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.fromLTRB(20.h, 21.v, 20.h, 18.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBellsimple,
                height: 20.adaptSize,
                width: 20.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(
                    left: 8.h,
                    right: 2.h,
                    bottom: 11.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.redA700,
                    borderRadius: BorderRadius.circular(
                      2.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }


 Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
        case BottomBarEnum.Home:
        return AppRoutes.homepageTabContainerPage;
case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
          case BottomBarEnum.Stream:
        return AppRoutes.streamScreen;
      case BottomBarEnum.Chat:
      return AppRoutes.messagesTabContainerScreen;
        case BottomBarEnum.Connect:
      return AppRoutes.profilePage;
     
      
      default:
        return "/";
    }
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 2.v,
          );
        },
        itemCount: controller
            .homepageOneModelObj.value.viewhierarchyItemList.value.length,
        itemBuilder: (context, index) {
          ViewhierarchyItemModel model = controller
              .homepageOneModelObj.value.viewhierarchyItemList.value[index];
          return Container(
            margin: EdgeInsets.only(top: 10,left: 5,right: 5),
            child: ViewhierarchyItemWidget(
              model,
            ),
          );
        },
      ),
    );
  }
}
