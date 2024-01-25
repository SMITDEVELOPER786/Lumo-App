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
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 501.v),
          decoration: AppDecoration.white,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Obx(
                    () => GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 118.v,
                        crossAxisCount: 4,
                        mainAxisSpacing: 8.h,
                        crossAxisSpacing: 8.h,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.giftOneModelObj.value
                          .userprofile4ItemList.value.length,
                      itemBuilder: (context, index) {
                        Userprofile4ItemModel model = controller.giftOneModelObj
                            .value.userprofile4ItemList.value[index];
                        return Userprofile4ItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
