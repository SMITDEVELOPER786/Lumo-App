import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/privacy_policy_screen/controller/privacy_policy_controller.dart';

class PrivacyPolicyScreen extends StatelessWidget {
   PrivacyPolicyScreen({Key? key}) : super(key: key);

  final controller=Get.put(PrivacyPolicyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: appTheme.black900,
            size: 20,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'privacy_protection_title'.tr,
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
        backgroundColor: appTheme.whiteA700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            List.generate(controller.content.length, (index) =>Column(
            crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                   textTileWidget(
                title:
                   controller.content[index]['title'],
                   fontWeight: FontWeight.w700,
          
              ),
              textTileWidget(
                title: controller.content[index]['description'],
                fontWeight: FontWeight.w400,
              ),
              ],
            ))
            
            
            
            //  [
            //   textTileWidget(
            //     title: 'privacy_protection_title_1'.tr,
            //     fontWeight: FontWeight.w700,
            //   ),
            //   textTileWidget(
            //     title:
            //        'privacy_protection_title_1_description'.tr,
            //        fontWeight: FontWeight.w400,
          
            //   ),
            //   textTileWidget(
            //     title: 'privacy_protection_title_1.1'.tr,
            //     fontWeight: FontWeight.w700,
            //   ),
            //   textTileWidget(
            //     title:
            //        'privacy_protection_title_1.1_description'.tr,
            //        fontWeight: FontWeight.w400,
          
            //   ),
            //   textTileWidget(
            //     title: 'privacy_protection_title_1.2'.tr,
            //     fontWeight: FontWeight.w700,
            //   ),
            //   textTileWidget(
            //     title:
            //        'privacy_protection_title_1.2_description'.tr,
            //        fontWeight: FontWeight.w400,
            //   ),
              
            // ],
          ),
        ),
      ),
    );
  }
}

class textTileWidget extends StatelessWidget {
  final String title;
  final FontWeight? fontWeight;
  const textTileWidget({Key? key, required this.title, this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Text(
        
        title,
        style: theme.textTheme.titleMedium!.copyWith(fontWeight: fontWeight,color: Colors.black),
      ),
    );
  }
}
