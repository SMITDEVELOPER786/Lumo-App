import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/apply_agency_controller.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

class ApplyAgencyScreen extends StatefulWidget {
  const ApplyAgencyScreen({Key? key}) : super(key: key);

  @override
  State<ApplyAgencyScreen> createState() => _ApplyAgencyScreenState();
}

class _ApplyAgencyScreenState extends State<ApplyAgencyScreen> {
  final AgencyController _agencycontroller = Get.put(AgencyController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFF1F8DF),
        appBar: _buildAppBar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              CustomTextFormField(
                fillColor: Colors.white,
                controller: _agencycontroller.agencyName,
                hintText: "Agency Name".tr,
                hintStyle: CustomTextStyles.titleSmallGray700,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffixConstraints: BoxConstraints(maxHeight: 52.v),
                contentPadding:
                    EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                fillColor: Colors.white,
                controller: _agencycontroller.emailController,
                hintText: "Add email".tr,
                hintStyle: CustomTextStyles.titleSmallGray700,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffixConstraints: BoxConstraints(maxHeight: 52.v),
                contentPadding:
                    EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                fillColor: Colors.white,
                controller: _agencycontroller.phoneController,
                hintText: "Add Whtsapp number".tr,
                hintStyle: CustomTextStyles.titleSmallGray700,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffixConstraints: BoxConstraints(maxHeight: 52.v),
                contentPadding:
                    EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v),
              ),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  width: 150,
                  onPressed: () {
                    _agencycontroller.pickImageFromGallery(1);
                  },
                  text: "Add Agency Logo".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL25Decoration),
              SizedBox(
                height: 15,
              ),
              Obx(() {
                if (_agencycontroller.imageFile1.value != null) {
                  return Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(
                                  File(
                                      _agencycontroller.imageFile1.value!.path),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.close, color: Colors.white),
                              onPressed: () => _agencycontroller.removeImage(1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Text('No logo selected');
                }
              }),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  width: 150,
                  onPressed: () {
                    _agencycontroller.pickImageFromGallery(2);
                  },
                  text: "Add Own Picture".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL25Decoration),
              SizedBox(
                height: 15,
              ),
              Obx(() {
                if (_agencycontroller.imageFile2.value != null) {
                  return Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(
                                  File(
                                      _agencycontroller.imageFile2.value!.path),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.close, color: Colors.white),
                              onPressed: () => _agencycontroller.removeImage(2),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Text('No picture selected');
                }
              }),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  width: 150,
                  onPressed: () {
                    _agencycontroller.pickImageFromGallery(3);
                  },
                  text: "Add ID's Picture".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientGreenToPrimaryTL25Decoration),
              SizedBox(
                height: 15,
              ),
              Obx(() {
                if (_agencycontroller.imageFile3.value != null) {
                  return Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: FileImage(
                                  File(
                                      _agencycontroller.imageFile3.value!.path),
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              icon: Icon(Icons.close, color: Colors.white),
                              onPressed: () => _agencycontroller.removeImage(3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else {
                  return Text('No picture selected');
                }
              }),
             SizedBox(
                height: 25,
              ),
              Obx(() {
                return _agencycontroller.isLoading.value
                    ? Center(child: CircularProgressIndicator())
                    : CustomElevatedButton(
                        // width: 150,
                        onPressed: () async {
                          var agencyData = {
                            "name" : _agencycontroller.agencyName.value.text,
                            "idCard": "123123",
                            "email":
                                _agencycontroller.emailController.value.text,
                            "phone":
                                _agencycontroller.phoneController.value.text,
                            "agencyImg":
                                _agencycontroller.imageFile1.value!.path,
                            "passport":
                                _agencycontroller.imageFile3.value!.path,
                            "photoId": _agencycontroller.imageFile2.value!.path,
                          };
                          await _agencycontroller.createAgency(agencyData);
                        },
                        text: "Submit".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientGreenToPrimaryTL25Decoration);
              }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapArrowLeft() {
    Get.back();
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 44.h,
        leading: GestureDetector(
            onTap: () {
              onTapArrowLeft();
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        centerTitle: true,
        title: Text(
          "Apply Agency",
          style: TextStyle(color: Colors.black, fontSize: 15),
        ));
  }
}
