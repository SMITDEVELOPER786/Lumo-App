import 'package:muhammad_zubair_s_application4/presentation/choose_guardian_one_screen/choose_guardian_one_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/choose_guardian_screen/choose_guardian_screen.dart';

import '../guardian_one_page/widgets/entryeffects_item_widget.dart';
import '../guardian_one_page/widgets/userprofile13_item_widget.dart';
import 'controller/guardian_one_controller.dart';
import 'models/entryeffects_item_model.dart';
import 'models/guardian_one_model.dart';
import 'models/userprofile13_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

class GuardianOnePage extends StatelessWidget {
  GuardianOnePage({Key? key})
      : super(
          key: key,
        );

  GuardianOneController controller =
      Get.put(GuardianOneController(GuardianOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfile(),
                        SizedBox(height: 20.v),
                        _buildFrame(),
                        SizedBox(height: 29.v),
                        _buildFrame1(),
                        SizedBox(height: 24.v),
                        _buildGuardianBenefits(),
                        SizedBox(height: 32.v),
                        CustomElevatedButton(
                          onPressed: (){
                            Get.lazyPut(() => ChooseGuardianOneScreen());
                            Get.to(() => ChooseGuardianOneScreen());

                          },
                          text: "lbl_select_guardian".tr,
                          margin: EdgeInsets.only(right: 20.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientGreenToPrimaryTL253Decoration,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
      height: 110.v,
      child:ListView.separated(
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 7.h,
            );
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            Userprofile13ItemModel model = controller
                .guardianOneModelObj.value.userprofile13ItemList.value[0];
            return Userprofile13ItemWidget(
              model,
            );
          },
        ),
      
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        children: [
          Container(
            width: 83.h,
            padding: EdgeInsets.symmetric(
              horizontal: 25.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillLime10013.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_1_month".tr,
              style: theme.textTheme.labelSmall,
            ),
          ),
          Container(
            width: 83.h,
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineGreen80006.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_3_months".tr,
              style: theme.textTheme.labelSmall,
            ),
          ),
          Container(
            width: 83.h,
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillLime10013.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_6_months".tr,
              style: theme.textTheme.labelSmall,
            ),
          ),
          Container(
            width: 83.h,
            margin: EdgeInsets.only(left: 6.h),
            padding: EdgeInsets.symmetric(
              horizontal: 20.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillLime10013.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              "lbl_12_months".tr,
              style: theme.textTheme.labelSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "msg_choose_a_guardian".tr,
              style: CustomTextStyles.titleSmallGray80001,
            ),
          ),
          CustomElevatedButton(
            onPressed: (){
                 Get.lazyPut(() =>ChooseGuardianOneScreen());
              Get.to(() => ChooseGuardianOneScreen());
            },
            height: 24.v,
            width: 83.h,
            text: "lbl_choose".tr,
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientAmberToOrangeDdDecoration,
            buttonTextStyle: CustomTextStyles.labelSmallWhiteA700_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGuardianBenefits() {
    return Container(
      margin: EdgeInsets.only(right: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 24.v,
      ),
      decoration: AppDecoration.fillLightgreen5005.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_guardian_benefits".tr,
            style: CustomTextStyles.titleSmallGray80001SemiBold,
          ),
          SizedBox(height: 10.v),
          Obx(
            () => GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 76.v,
                crossAxisCount: 2,
                mainAxisSpacing: 9.h,
                crossAxisSpacing: 9.h,
              ),
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller
                  .guardianOneModelObj.value.entryeffectsItemList.value.length,
              itemBuilder: (context, index) {
                EntryeffectsItemModel model = controller.guardianOneModelObj
                    .value.entryeffectsItemList.value[index];
                return EntryeffectsItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
