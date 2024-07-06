import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_one_screen/controller/account_creation_one_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/account_creation_screen/account_creation_screen.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_phone_number.dart';
import 'package:country_pickers/country.dart';

class AccountCreationOneScreen extends StatefulWidget {
  const AccountCreationOneScreen({Key? key}) : super(key: key);

  @override
  _AccountCreationOneScreenState createState() =>
      _AccountCreationOneScreenState();
}

class _AccountCreationOneScreenState extends State<AccountCreationOneScreen> {
  final controller = Get.put(AccountCreationOneController());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? countryValue;
  String? stateValue;
  String? cityValue;
  String? address;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1025,
                      height: 5.v,
                      width: 352.h,
                    ),
                    SizedBox(height: 40.v),
                    Text(
                      "msg_verify_your_account".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 6.v),
                    Container(
                      width: 283.h,
                      margin: EdgeInsets.only(right: 69.h),
                      child: Text(
                        "msg_select_your_country".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeGray40005,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CSCPicker(
                      showCities: false,
                      showStates: false,
                      onCountryChanged: (value) {
                        setState(() {
                          countryValue = value;
                        });
                      },
                      onStateChanged: (value) {
                        setState(() {
                          stateValue = value;
                        });
                      },
                      onCityChanged: (value) {
                        setState(() {
                          cityValue = value;
                        });
                      },
                    ),
                    SizedBox(height: 20.v),
                    Obx(
                      () => CustomPhoneNumber(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a phone number.';
                          }
                          // Add more validation logic as per your requirements
                          return null; // Return null if the input is valid
                        },
                        country: controller.selectedCountry.value,
                        controller: controller.phoneNumberController,
                        onTap: (Country value) {
                          controller.selectedCountry.value = value;
                        },
                      ),
                    ),
                    SizedBox(height: 40.v),
                    CustomElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.lazyPut(() => AccountCreationScreen());
                          Get.toNamed(AppRoutes.accountCreationScreen);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Please correct the errors in the form.',
                              ),
                            ),
                          );
                        }
                      },
                      text: "lbl_proceed".tr,
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientGreenToPrimaryTL25Decoration,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 40.v,
      leadingWidth: 392.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorBlack900,
        margin: EdgeInsets.fromLTRB(27.h, 4.v, 358.h, 4.v),
        onTap: onTapVector,
      ),
    );
  }

  void onTapVector() {
    Get.back();
  }
}
