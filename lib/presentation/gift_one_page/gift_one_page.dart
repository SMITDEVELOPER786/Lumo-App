import '../gift_one_page/widgets/userprofile4_item_widget.dart';
import 'controller/gift_one_controller.dart';
import 'models/gift_one_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

class GiftOnePage extends StatelessWidget {
  GiftOnePage({Key? key})
      : super(
          key: key,
        );

  GiftOneController controller = Get.put(GiftOneController(GiftOneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 501.v),
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Text("Ok")
         ],
          ),
        ),
      ),
    );
  }
}
