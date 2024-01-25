import '../controller/homepage_tab_container_controller.dart';
import '../models/jointhestreaming_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class JointhestreamingItemWidget extends StatelessWidget {
  JointhestreamingItemWidget(
    this.jointhestreamingItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  JointhestreamingItemModel jointhestreamingItemModelObj;

  var controller = Get.find<HomepageTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
          height: 100.v,
          width: 320.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath: jointhestreamingItemModelObj.image!.value,
                  height: 100.v,
                  width: 320.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 19.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          jointhestreamingItemModelObj.title!.value,
                          style:
                              CustomTextStyles.titleSmallSourceSerifProLime5004,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Container(
                        width: 289.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Obx(
                          () => Text(
                            jointhestreamingItemModelObj.description!.value,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallInterGray30002
                                .copyWith(
                              height: 1.20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Obx(
                          () => Text(
                            jointhestreamingItemModelObj.buttonText!.value,
                            style: CustomTextStyles.labelLargePrimary,
                          ),
                        ),
                      ),
                    ],
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
