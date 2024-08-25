import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/about_luma_screen/widget/live_agreemant/controller/live_agreemant_controller.dart';

class LiveAgreemantScreen extends StatelessWidget {
   LiveAgreemantScreen({Key? key}) : super(key: key);

   final controller=Get.put(LiveAgreemantController());
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
          'live_agreemant_title'.tr,
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
            children: [
              textTileWidget(
                    title:
                       'live_agreemant_description'.tr,
                       fontWeight: FontWeight.w500,
              
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(controller.content.length, (index) =>  textTileWidget(
                    title:
                       controller.content[index],
                       fontWeight: FontWeight.w500,
              
                  ),))


            ],
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
