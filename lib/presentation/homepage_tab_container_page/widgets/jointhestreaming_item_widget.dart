import '../controller/homepage_tab_container_controller.dart';
import '../models/jointhestreaming_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class JointhestreamingItemWidget extends StatelessWidget {
var data;

  JointhestreamingItemWidget({
    required this.data,
  
    Key? key,
  }) : super(key: key);

  var controller = Get.find<HomepageTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.v,
      width: 320.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
         Container(
    height: 300.v,
    width: 320.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.h),
      image: DecorationImage(
        image: NetworkImage("https://res.cloudinary.com/dk3hy0n39/image/upload/${data['bannerImg']}"),
        fit: BoxFit.cover,
      ),
    ),
        ),
          
        //   Align(
        //     alignment: Alignment.center,
        //     child: Padding(
        //       padding: EdgeInsets.only(
        //         left: 10.h,
        //         right: 19.h,
        //       ),
        //       child: Column(
        //         mainAxisSize: MainAxisSize.min,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //       Text(
        //               "data.title!.value",
        //               style:
        //                   CustomTextStyles.titleSmallSourceSerifProLime5004,
                    
        //           ),
        //           SizedBox(height: 2.v),
        //           Container(
        //             width: 289.h,
        //             margin: EdgeInsets.only(left: 1.h),
        //             child: Text(
        //                 "jointhestreamingItemModelObj.description!.value",
        //                 maxLines: 2,
        //                 overflow: TextOverflow.ellipsis,
        //                 style: CustomTextStyles.bodySmallInterGray30002
        //                     .copyWith(
        //                   height: 1.20,
                       
        //               ),
        //             ),
        //           ),
        //           SizedBox(height: 10.v),
        //           Padding(
        //             padding: EdgeInsets.only(left: 1.h),
        //             child:Text(
        //                " jointhestreamingItemModelObj.buttonText!.value",
        //                 style: CustomTextStyles.labelLargePrimary,
        //               ),
                    
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        ],
      ),
    );
  }
}
