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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillLime,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(right: 20.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgBellsimple,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.only(right: 2.h),
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
              ),
              SizedBox(height: 40.v),
              _buildViewHierarchy(),
            ],
          ),
        ),
      ),
    );
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
            height: 1.v,
          );
        },
        itemCount: controller
            .homepageOneModelObj.value.viewhierarchyItemList.value.length,
        itemBuilder: (context, index) {
          ViewhierarchyItemModel model = controller
              .homepageOneModelObj.value.viewhierarchyItemList.value[index];
          return ViewhierarchyItemWidget(
            model,
          );
        },
      ),
    );
  }
}
