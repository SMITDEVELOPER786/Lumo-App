import '../notifications_screen/widgets/userprofile3_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final NotificationsController controller = Get.put(NotificationsController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(top: 24.v),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 12.v);
                    },
                    itemCount: controller.notificationsModelObj.value
                        .userprofile3ItemList.value.length,
                    itemBuilder: (context, index) {
                      Userprofile3ItemModel model = controller
                          .notificationsModelObj
                          .value
                          .userprofile3ItemList
                          .value[index];
                      return Userprofile3ItemWidget(model);
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      
        height: 50.v,
        leadingWidth: 44.h,
        leading: GestureDetector(
          onTap: (){
  onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios,size: 25
          ),
        ),

           
        centerTitle: true,
        title: Text("lbl_notifications".tr,));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
