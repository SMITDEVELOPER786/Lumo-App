import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/live_agreemant/live_agrement_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/no_child_endangerment_policy/no_child_endangerment_policy_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/privacy_policy_screen/privacy_policy_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/term_and_condition/term_and_condition_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/user_recharge_agreemant/user_recharge_agreemant_screen.dart';

class AboutLumaScreen extends StatelessWidget {
  const AboutLumaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new_outlined,color: appTheme.black900,size: 20,),onPressed: (){
          Get.back();
        },),
        title: Text('about_screen_title'.tr,style: theme.textTheme.titleMedium!.copyWith(color: appTheme.black900),),
        centerTitle: true,
        backgroundColor: appTheme.whiteA700,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image(image: AssetImage('assets/images/po..PNG',),width: 150,),
          Text('about_banner_title'.tr,style:theme.textTheme.titleMedium!.copyWith(color: appTheme.gray300),),
        SizedBox(height: 12,),
          _textIconTileWidget(title: 'about_screen_privacy_policy_title'.tr,onTap: (){
            Get.to(PrivacyPolicyScreen());
          },),  
          _textIconTileWidget(title: 'about_screen_term_of_services_title'.tr,onTap: (){
            Get.to(TermAndConditionScreen());
          },),
          _textIconTileWidget(title: 'about_screen_live_agreement_title'.tr,onTap: (){
            Get.to(LiveAgreemantScreen());

          },),
          _textIconTileWidget(title: 'about_screen_user_recharge_agreement_title'.tr,onTap: (){
            Get.to(UserChargeAgreemantScreen());
            
          },),
          _textIconTileWidget(title: 'about_screen_no_child_endangerment_policy_title'.tr,onTap: (){
            Get.to(NoChildEndangermentPolicyScreen());

          },),
        
        ],),
      ),
      
    );
  }
}

class _textIconTileWidget extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const _textIconTileWidget({
    Key? key,
    required this.title,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
        color: appTheme.whiteA700,
        child: Row(children: [
           Text(title,style:theme.textTheme.titleMedium!.copyWith(color: appTheme.black900),),
           Spacer(),
          Icon(Icons.arrow_forward_ios_rounded,color: appTheme.gray500,size: 20)
        ],),
      ),
    );
  }
}