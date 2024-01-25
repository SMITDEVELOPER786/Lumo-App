import '../blocked_list_screen/widgets/userprofile12_item_widget.dart';import 'controller/blocked_list_controller.dart';import 'models/userprofile12_item_model.dart';import 'package:flutter/material.dart';import 'package:muhammad_zubair_s_application4/core/app_export.dart';import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';class BlockedListScreen extends GetWidget<BlockedListController> {const BlockedListScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(), body: Padding(padding: EdgeInsets.only(left: 20.h, top: 24.v, right: 20.h), child: Obx(() => ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 12.v);}, itemCount: controller.blockedListModelObj.value.userprofile12ItemList.value.length, itemBuilder: (context, index) {Userprofile12ItemModel model = controller.blockedListModelObj.value.userprofile12ItemList.value[index]; return Userprofile12ItemWidget(model);}))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(height: 24.v, leadingWidth: 44.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowdownGray80003, margin: EdgeInsets.only(left: 20.h), onTap: () {onTapArrowLeft();}), centerTitle: true, title: AppbarTitle(text: "lbl_blocked_list2".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft() { Get.back(); } 
 }
