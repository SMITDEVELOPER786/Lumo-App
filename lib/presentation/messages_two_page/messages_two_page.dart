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
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 14.v),
        child: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           
              _buildUserProfile(),
              SizedBox(height:10,),
               _buildUserProfile(),
            ],
               
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
