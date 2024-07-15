import 'package:muhammad_zubair_s_application4/presentation/verification_five_screen/verification_five_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/verification_seven_screen/controller/verification_seven_controller.dart';

import '../verification_four_screen/controller/verification_four_controller.dart';
import '../verification_six_screen/widgets/userprofile_item_widget.dart';
import 'controller/verification_six_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_trailing_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class VerificationSixScreen extends StatefulWidget {
  
   VerificationSixScreen({Key? key,   }) : super(key: key);

  @override
  _VerificationSixScreenState createState() => _VerificationSixScreenState();
}

class _VerificationSixScreenState extends State<VerificationSixScreen> {
  final broadcastController = Get.put(VerificationSixController());
  final createProfileController = Get.put(VerificationSevenController());
  final NameorImageController = Get.put(VerificationFourController());
    @override
  void initState() {
    broadcastController.getBroadcasterAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 21.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1025,
                height: 5.v,
                width: 352.h,
              ),
              SizedBox(height: 38.v),
              Text(
                "msg_choose_your_favorite".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 11.h),
                  child: Text(
                    "msg_help_us_personalize".tr,
                    style: CustomTextStyles.labelLargeGray40005,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              GetBuilder<VerificationSixController>(
                  builder: (broadcastController) {
                return broadcastController.broadcasterList.length <= 0
                    ? Center(child: CircularProgressIndicator())
                    : GridView.builder(
                        padding: EdgeInsets.zero,
                        clipBehavior: Clip.none,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 2.0,
                          mainAxisExtent: 105.v,
                          crossAxisCount: 3,
                          mainAxisSpacing: 20.h,
                          crossAxisSpacing: 32.h,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: broadcastController.broadcasterList.length,
                        itemBuilder: (context, index) {
                          if (broadcastController.isSelected.length <= index)
                            broadcastController.isSelected.add(false);
                          return GestureDetector(
                            onTap: () {
                              String broadcasterId = broadcastController.broadcasterList[index]["_id"];
        // Toggle selection and store the selected broadcaster ID
        broadcastController.toggleSelection(index, broadcasterId);
                            },
                            child: Container(
                              width: double
                                  .infinity, // Adjust the width to take the available space
                              height: double
                                  .infinity, // Adjust the height to take the available space
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://res.cloudinary.com/dk3hy0n39/image/upload/${broadcastController.broadcasterList[index]["profileImage"]}"),
                                ),
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              child: Stack(
                                  clipBehavior: Clip.none,
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 50,
                                          ),
                                          child: Container(
                                            width: 17,
                                            height: 17,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  broadcastController
                                                          .isSelected[index]
                                                      ? Color.fromARGB(
                                                              255, 163, 226, 15)
                                                          .withOpacity(0.8)
                                                      : Colors
                                                          .grey, // Start with yellow at the top
                                                  broadcastController
                                                          .isSelected[index]
                                                      ? Color.fromARGB(
                                                          255, 43, 112, 45)
                                                      : Colors
                                                          .grey, // Transition to green at the bottom
                                                ],
                                                stops: [0.2, 1.0],
                                              ),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.check,
                                                size: 15,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                        bottom: -20,
                                        // top: 20,
                                        child: broadcastController
                                                        .broadcasterList[index]
                                                    ["name"] !=
                                                null
                                            ? Text(broadcastController
                                                .broadcasterList[index]["name"])
                                            : Text(""))
                                  ]),
                            ),
                          );
                        },
                      );
              }),
             
              SizedBox(height: 51.v),
              CustomElevatedButton(
                onPressed: () async {
                  var completeProfile = {
                    "username": NameorImageController.userNameController.value.text,
                   "profileImage" : NameorImageController.imageFile.value,
                    "gender" :  createProfileController.gender.value,
                    "dateOfBirth" :  createProfileController.selectedDate.value,
                    "favBroadcaster" : broadcastController.selectedBroadcasterId,


                  };
                  print(completeProfile);
                  broadcastController.createProfile( file: NameorImageController.imageFile.value, );

                  // Delay navigation after 2 seconds (adjust the duration as needed)

                  // Get.lazyPut(() => VerificationFiveScreen());
                  // Get.toNamed(AppRoutes.verificationFiveScreen);
                },
                text: "lbl_confirm".tr,
                buttonStyle: CustomButtonStyles.none,
                decoration:
                    CustomButtonStyles.gradientGreenToPrimaryTL251Decoration,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}

/// Section Widget
PreferredSizeWidget _buildAppBar() {
  return CustomAppBar(
    actions: [
      AppbarTrailingButton(
        onTap: () {
          Get.back();
        },
        margin: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 14.v,
        ),
      ),
    ],
  );
}



  // Widget _buildUserProfile() {
  //   var broadcastController = Get.put(VerificationSixController());
  //   return Align(
  //     alignment: Alignment.centerRight,
  //     child: Padding(
  //       padding: EdgeInsets.only(
  //         left: 34.h,
  //         right: 11.h,
  //       ),
  //       child: GridView.builder(
  //           shrinkWrap: true,
  //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //             mainAxisExtent: 105.v,
  //             crossAxisCount: 3,
  //             mainAxisSpacing: 32.h,
  //             crossAxisSpacing: 32.h,
  //           ),
  //           physics: NeverScrollableScrollPhysics(),
  //           itemCount: broadcastController.broadcasterList.length,
  //           itemBuilder: (context, index) {
  //          return Container(
  //           width: 25,
  //           height: 25,
  //           decoration: BoxDecoration(
  //             shape: BoxShape.circle
  //           ),
  //          );
             
  //           },
  //         ),
  //       ),
  //     );

  // }

