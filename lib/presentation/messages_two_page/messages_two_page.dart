import '../messages_two_page/widgets/userprofile6_item_widget.dart';
import 'controller/messages_two_controller.dart';
import 'models/messages_two_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title_searchview.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class MessagesTwoPage extends StatelessWidget {
  MessagesTwoPage({Key? key})
      : super(
          key: key,
        );

  MessagesTwoController controller =
      Get.put(MessagesTwoController(MessagesTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 14.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.v),
                      child: Text(
                        "lbl_special_message".tr,
                        style: CustomTextStyles.bodySmallInterGray60008,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          Text(
                            "msg_official_message".tr,
                            style: CustomTextStyles.labelMediumGreen70002Bold,
                          ),
                          SizedBox(height: 3.v),
                          Container(
                            height: 2.v,
                            width: 20.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                1.h,
                              ),
                              gradient: LinearGradient(
                                begin: Alignment(1.03, 1.11),
                                end: Alignment(0.07, -0.41),
                                colors: [
                                  appTheme.green70002,
                                  theme.colorScheme.primary,
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 19.v),
              _buildUserProfile(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      centerTitle: true,
      title: AppbarTitleSearchview(
        hintText: "msg_search_users_messages".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 12.v,
          );
        },
        itemCount: controller
            .messagesTwoModelObj.value.userprofile6ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile6ItemModel model = controller
              .messagesTwoModelObj.value.userprofile6ItemList.value[index];
          return Userprofile6ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
