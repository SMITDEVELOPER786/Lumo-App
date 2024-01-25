import '../messages_page/widgets/userprofile5_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/messages_model.dart';
import 'models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key})
      : super(
          key: key,
        );

  MessagesController controller =
      Get.put(MessagesController(MessagesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillLime,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              _buildUserProfile(),
            ],
          ),
        ),
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
        itemCount:
            controller.messagesModelObj.value.userprofile5ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile5ItemModel model = controller
              .messagesModelObj.value.userprofile5ItemList.value[index];
          return Userprofile5ItemWidget(
            model,
          );
        },
      ),
    );
  }
}
