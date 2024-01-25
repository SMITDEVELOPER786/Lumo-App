import '../stream_level_dialog/widgets/streamlevel_item_widget.dart';import 'controller/stream_level_controller.dart';import 'models/streamlevel_item_model.dart';import 'package:flutter/material.dart';import 'package:muhammad_zubair_s_application4/core/app_export.dart';
// ignore_for_file: must_be_immutable
class StreamLevelDialog extends StatelessWidget {StreamLevelDialog(this.controller, {Key? key}) : super(key: key);

StreamLevelController controller;

@override Widget build(BuildContext context) { return Container(width: 353.h, padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 38.v), decoration: AppDecoration.fillLime.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgCloseGray80003, height: 16.adaptSize, width: 16.adaptSize, alignment: Alignment.centerRight, margin: EdgeInsets.only(right: 4.h), onTap: () {onTapImgClose();}), SizedBox(height: 8.v), Text("lbl_stream_level".tr, style: CustomTextStyles.titleSmallGray80001SemiBold_1), SizedBox(height: 10.v), Text("msg_select_who_can_access".tr, style: CustomTextStyles.labelLargeGray50005), SizedBox(height: 26.v), Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: controller.streamLevelModelObj.value.streamlevelItemList.value.length, itemBuilder: (context, index) {StreamlevelItemModel model = controller.streamLevelModelObj.value.streamlevelItemList.value[index]; return StreamlevelItemWidget(model);}))])); } 

/// Navigates to the previous screen.
onTapImgClose() { Get.back(); } 
 }
