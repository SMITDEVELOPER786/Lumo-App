import '../choose_guardian_one_screen/widgets/userprofile14_item_widget.dart';
import 'controller/choose_guardian_one_controller.dart';
import 'models/userprofile14_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';


class ChooseGuardianOneScreen extends StatefulWidget {
  const ChooseGuardianOneScreen({Key? key}) : super(key: key);

  @override
  State<ChooseGuardianOneScreen> createState() => _ChooseGuardianOneScreenState();
}

class _ChooseGuardianOneScreenState extends State<ChooseGuardianOneScreen> {
  var controller = Get.put(ChooseGuardianOneController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 27.v),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Text("lbl_following".tr,
                              style: CustomTextStyles.labelMediumGreen80005),
                          SizedBox(height: 3.v),
                          Container(
                              height: 2.v,
                              width: 20.h,
                              decoration: BoxDecoration(
                                  color: appTheme.green80005,
                                  borderRadius: BorderRadius.circular(1.h)))
                        ]),
                        Padding(
                            padding: EdgeInsets.only(left: 52.h, bottom: 5.v),
                            child: Text("lbl_followers".tr,
                                style: CustomTextStyles.labelMediumGray60008))
                      ]),
                  SizedBox(height: 17.v),
                  _buildUserProfile()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 44.h,
         leading:GestureDetector(
          onTap: (){
            onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios,)),
        
        centerTitle: true,
        title:Text("lbl_choose_guardian".tr));
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 12.v);
        },
        itemCount: controller
            .chooseGuardianOneModelObj.value.userprofile14ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile14ItemModel model = controller.chooseGuardianOneModelObj
              .value.userprofile14ItemList.value[index];
          return Userprofile14ItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
