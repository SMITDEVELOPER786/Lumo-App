import '../select_tag_dialog/widgets/frame_item_widget.dart';
import 'controller/select_tag_controller.dart';
import 'models/frame_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SelectTagDialog extends StatelessWidget {
  SelectTagDialog({Key? key}) : super(key: key);

  var controller=Get.put(SelectTagController());

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 353.h,
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 27.v),
        decoration: AppDecoration.fillLime
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 8.h, right: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(top: 15.v),
                                    child: Column(children: [
                                      Text("lbl_select_tag".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray80003SemiBold),
                                      SizedBox(height: 7.v),
                                      SizedBox(
                                          width: 266.h,
                                          child: Text(
                                              "msg_select_your_preferred".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .labelLargeGray50012
                                                  .copyWith(height: 1.17)))
                                    ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgCloseGray80003,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                                margin: EdgeInsets.only(bottom: 55.v),
                                onTap: () {
                                  onTapImgClose();
                                })
                          ]))),
              SizedBox(height: 28.v),
              Obx(() => Wrap(
                  runSpacing: 8.v,
                  spacing: 8.h,
                  children: List<Widget>.generate(
                      controller.selectTagModelObj.value.frameItemList.value
                          .length, (index) {
                    FrameItemModel model = controller
                        .selectTagModelObj.value.frameItemList.value[index];
                    return FrameItemWidget(model);
                  })))
            ]));
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
