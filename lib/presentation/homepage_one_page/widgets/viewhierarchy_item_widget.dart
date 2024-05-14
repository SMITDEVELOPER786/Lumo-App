import '../controller/homepage_one_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatefulWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  State<ViewhierarchyItemWidget> createState() =>
      _ViewhierarchyItemWidgetState();
}

class _ViewhierarchyItemWidgetState extends State<ViewhierarchyItemWidget> {
  var controller = Get.find<HomepageOneController>();
  @override
  void initState() {
    super.initState();
    controller.fetchBannerData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Obx(
          () => controller.bannerData.isEmpty
              ? CircularProgressIndicator()
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.bannerData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Container(
                        width: 350,
                        height: 100,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.25, -0.54),
                              end: Alignment(1.07, 1.24),
                              colors: [
                                appTheme.lightGreenA10001,
                                appTheme.amber50075,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(
                                  "https://res.cloudinary.com/dk3hy0n39/image/upload/${controller.bannerData[index]["bannerImg"]}",
                                ),
                                fit: BoxFit.contain)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Monthly toppers party",
                                     style: CustomTextStyles.titleSmallPoppinsGray80001SemiBold,)
                                  ],
                                ),
                      ),
                    );
                  },
                ),
        ),
      ),
    ]);
    // Container(
    //   decoration: AppDecoration.gradientLightGreenAToAmber.copyWith(
    //     borderRadius: BorderRadiusStyle.roundedBorder10,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Container(
    //         height: 142.v,
    //         width: 292.h,
    //         margin: EdgeInsets.only(bottom: 13.v),
    //         child: Stack(
    //           alignment: Alignment.bottomRight,
    //           children: [
    //             Obx(
    //               () => CustomImageView(
    //                 imagePath: viewhierarchyItemModelObj.fireworkImage!.value,
    //                 height: 78.v,
    //                 width: 75.h,
    //                 radius: BorderRadius.circular(
    //                   10.h,
    //                 ),
    //                 alignment: Alignment.topLeft,
    //               ),
    //             ),
    //             Align(
    //               alignment: Alignment.bottomRight,
    //               child: Padding(
    //                 padding: EdgeInsets.only(left: 62.h),
    //                 child: Column(
    //                   mainAxisSize: MainAxisSize.min,
    //                   children: [
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.end,
    //                       children: [
    //                         Container(
    //                           height: 62.adaptSize,
    //                           width: 62.adaptSize,
    //                           margin: EdgeInsets.only(top: 20.v),
    //                           child: Stack(
    //                             alignment: Alignment.center,
    //                             children: [
    //                               Obx(
    //                                 () => CustomImageView(
    //                                   imagePath: viewhierarchyItemModelObj
    //                                       .toppersPartyImage1!.value,
    //                                   height: 62.adaptSize,
    //                                   width: 62.adaptSize,
    //                                   alignment: Alignment.center,
    //                                 ),
    //                               ),
    //                               Obx(
    //                                 () => CustomImageView(
    //                                   imagePath: viewhierarchyItemModelObj
    //                                       .toppersPartyImage2!.value,
    //                                   height: 56.adaptSize,
    //                                   width: 56.adaptSize,
    //                                   alignment: Alignment.center,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         Container(
    //                           height: 79.v,
    //                           width: 77.h,
    //                           margin: EdgeInsets.only(
    //                             left: 11.h,
    //                             bottom: 4.v,
    //                           ),
    //                           child: Stack(
    //                             alignment: Alignment.bottomCenter,
    //                             children: [
    //                               Align(
    //                                 alignment: Alignment.center,
    //                                 child: SizedBox(
    //                                   height: 77.adaptSize,
    //                                   width: 77.adaptSize,
    //                                   child: Stack(
    //                                     alignment: Alignment.center,
    //                                     children: [
    //                                       Obx(
    //                                         () => CustomImageView(
    //                                           imagePath:
    //                                               viewhierarchyItemModelObj
    //                                                   .toppersPartyImage3!
    //                                                   .value,
    //                                           height: 77.adaptSize,
    //                                           width: 77.adaptSize,
    //                                           alignment: Alignment.center,
    //                                         ),
    //                                       ),
    //                                       Obx(
    //                                         () => CustomImageView(
    //                                           imagePath:
    //                                               viewhierarchyItemModelObj
    //                                                   .toppersPartyImage4!
    //                                                   .value,
    //                                           height: 69.adaptSize,
    //                                           width: 69.adaptSize,
    //                                           alignment: Alignment.center,
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                 ),
    //                               ),
    //                               Obx(
    //                                 () => CustomImageView(
    //                                   imagePath: viewhierarchyItemModelObj
    //                                       .toppersPartyImage5!.value,
    //                                   height: 16.adaptSize,
    //                                   width: 16.adaptSize,
    //                                   alignment: Alignment.bottomCenter,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                         Container(
    //                           height: 62.adaptSize,
    //                           width: 62.adaptSize,
    //                           margin: EdgeInsets.only(
    //                             left: 16.h,
    //                             top: 20.v,
    //                           ),
    //                           child: Stack(
    //                             alignment: Alignment.center,
    //                             children: [
    //                               Obx(
    //                                 () => CustomImageView(
    //                                   imagePath: viewhierarchyItemModelObj
    //                                       .toppersPartyImage6!.value,
    //                                   height: 62.adaptSize,
    //                                   width: 62.adaptSize,
    //                                   alignment: Alignment.center,
    //                                 ),
    //                               ),
    //                               Obx(
    //                                 () => CustomImageView(
    //                                   imagePath: viewhierarchyItemModelObj
    //                                       .toppersPartyImage7!.value,
    //                                   height: 56.adaptSize,
    //                                   width: 56.adaptSize,
    //                                   alignment: Alignment.center,
    //                                 ),
    //                               ),
    //                             ],
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                     SizedBox(height: 6.v),
    //                     Obx(
    //                       () => Text(
    //                         viewhierarchyItemModelObj.monthlyToppers!.value,
    //                         style: CustomTextStyles
    //                             .titleSmallPoppinsGray80001SemiBold,
    //                       ),
    //                     ),
    //                     SizedBox(height: 1.v),
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       children: [
    //                         Obx(
    //                           () => CustomImageView(
    //                             imagePath: viewhierarchyItemModelObj
    //                                 .januaryImage!.value,
    //                             height: 16.adaptSize,
    //                             width: 16.adaptSize,
    //                           ),
    //                         ),
    //                         Padding(
    //                           padding: EdgeInsets.only(left: 10.h),
    //                           child: Obx(
    //                             () => Text(
    //                               viewhierarchyItemModelObj.januaryText!.value,
    //                               style: CustomTextStyles.labelMediumGray70009,
    //                             ),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Obx(
    //         () => CustomImageView(
    //           imagePath: viewhierarchyItemModelObj.toppersPartyImage8!.value,
    //           height: 51.v,
    //           width: 61.h,
    //           radius: BorderRadius.circular(
    //             10.h,
    //           ),
    //           margin: EdgeInsets.only(top: 104.v),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
