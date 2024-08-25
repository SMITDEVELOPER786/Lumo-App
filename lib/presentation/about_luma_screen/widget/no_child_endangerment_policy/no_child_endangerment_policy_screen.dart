import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class NoChildEndangermentPolicyScreen extends StatelessWidget {
   NoChildEndangermentPolicyScreen({Key? key}) : super(key: key);


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
          'no_child_endangerment_policy_title'.tr,
          style: theme.textTheme.titleLarge,
        ),
        centerTitle: true,
        backgroundColor: appTheme.whiteA700,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: textTileWidget(
                title:
                   'no_child_endangerment_policy_description'.tr,
                   fontWeight: FontWeight.w400,
          
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
