import '../search_screen/widgets/userprofile2_item_widget.dart';
import 'controller/search_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_search_view.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  
  var controller = Get.put(SearchController());
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.searchUser('');
  }
  @override
  Widget build(BuildContext context) {
    print('ui daaaaa  :  ${controller.searchUsers}');
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                height: 768.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 20.v),
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup62,
                      height: 400.v,
                      width: 393.h,
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildFrame(),
                                SizedBox(height: 12.v),
                                _buildUserProfile()
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 45.v,
        leadingWidth: 44.h,
        leading:
        GestureDetector(
          onTap: (){
  onTapArrowLeft();
          },
          child: Icon(Icons.arrow_back_ios,color: appTheme.black900,
          
          ),
        ),
       
        centerTitle: true,
        title: Text("lbl_search_friends2".tr,style: TextStyle(color: appTheme.black900,),));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomSearchView(
              controller: controller.searchController,
              hintText: "msg_search_events_users".tr,
              onFieldSubmitted: (p0) => controller.searchUser(p0),
              onChanged: ((p0) => print(p0)),
              hintStyle: CustomTextStyles.bodyMediumGray40004)),
      Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.gradientGreenToPrimaryTL18,
              child: CustomImageView(imagePath: ImageConstant.imgFilter)))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(() =>
    controller.isLoading.value?
Center(child: CircularProgressIndicator(),)
    :
    
     Expanded(
       child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 206.v,
              crossAxisCount: 2,
              mainAxisSpacing: 13.h,
              crossAxisSpacing: 13.h),
          physics: ScrollPhysics(),
          itemCount:
              controller.searchModelObj.value.userprofile2ItemList.value.length,
              
          itemBuilder: (context, index) {
            Userprofile2ItemModel model =
                controller.searchModelObj.value.userprofile2ItemList.value[index];
            return Userprofile2ItemWidget(model);
          }),
     ));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
