import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/core/utils/global.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/controller/mall_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/models/chatbubbles_item_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/models/viewhierarchy1_item_model.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/widgets/chatbubbles_item_widget.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/widgets/viewhierarchy1_item_widget.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/coins_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/profile_page/coins_transfer_history.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

import 'package:muhammad_zubair_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_elevated_button.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_text_form_field.dart';

class CoinsTrading extends StatefulWidget {
  const CoinsTrading({Key? key}) : super(key: key);

  @override
  State<CoinsTrading> createState() => _CoinsTradingState();
}

class _CoinsTradingState extends State<CoinsTrading> {
  var controller = Get.put(MallController());
  final CoinsController coincontroller = Get.put(CoinsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(children: [
                Center(
                  child: Container(
                    width: 350,
                    // height: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 163, 226, 15)
                              .withOpacity(0.8), // Start with yellow at the top
                          Color.fromARGB(255, 43, 112,
                              45), // Transition to green at the bottom
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 26.v,
                              width: 34.h,
                              decoration: BoxDecoration(
                                  // shape: BoxShape.circle, color: Colors.white,
                                  ),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgPngegg51,
                                  height: 24.v,
                                  width: 30.h,
                                  margin: EdgeInsets.symmetric(vertical: 5.v)),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Coins Trading",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(() => CoinHistoryScreen());
                              },
                              child: Text(
                                "Details",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              coins.toString(),
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 330,
                          height: 1,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Transfer To',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    Obx(() {
                      if (coincontroller.isLoading.value) {
                        return CircularProgressIndicator();
                      }
                      if (coincontroller.userName.value.isNotEmpty) {
                        return Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: (BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://res.cloudinary.com/dk3hy0n39/image/upload/${coincontroller.userimage.value}",
                                  ),
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'User Name: ${coincontroller.userName.value}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        );
                      }
                      return Container();
                    }),
                  ],
                ),
                SizedBox(height: 8),
                CustomTextFormField(
                    controller: coincontroller.userIdController,
                    hintText: "User ID".tr,
                    hintStyle: CustomTextStyles.titleSmallGray700,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffixConstraints: BoxConstraints(maxHeight: 52.v),
                    onFieldSubmitted: (value) {
                      coincontroller.fetchUserName(value);
                    },
                    contentPadding:
                        EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v)),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Transfer Amount',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                CustomTextFormField(
                    controller: coincontroller.transferAmountController,
                    hintText: "Please enter coins amount".tr,
                    hintStyle: CustomTextStyles.titleSmallGray700,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffixConstraints: BoxConstraints(maxHeight: 52.v),

                   

                    contentPadding:
                        EdgeInsets.only(left: 20.h, top: 17.v, bottom: 17.v)),
                SizedBox(height: 20),
                Obx(
                  () => coincontroller.loading.value
                      ? CircularProgressIndicator()
                      : CustomElevatedButton(
                          onPressed: () {
                            var coinsData = {
                              "recieverId":
                                  coincontroller.receiverId.value.toString(),
                              "coins": int.parse(coincontroller
                                  .transferAmountController.value.text),
                            };
                            print(coinsData);
                            coincontroller.sendCoins(coinsData);
                          },
                          text: "Transfer".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration: CustomButtonStyles
                              .gradientGreenToPrimaryTL25Decoration),
                ),
              ]),
            )));
  }

  onTapArrowLeft() {
    Get.back();
  }

  Widget _buildSmall() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        decoration: AppDecoration.outlineIndigoF.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgSmall), fit: BoxFit.cover)),
        child: Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Container(
                height: 154.v,
                width: 353.h,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 6, 138, 10),
                    borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgNoise,
                      height: 154.v,
                      width: 353.h,
                      radius: BorderRadius.circular(12.h),
                      alignment: Alignment.center),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 73.h),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            Text("lbl_my_diamonds".tr,
                                style: CustomTextStyles.labelLargeGreenA10001),
                            SizedBox(height: 5.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 57.h),
                                    child: Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgPngegg51,
                                          height: 26.v,
                                          width: 34.h,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 5.v)),
                                      Text("lbl_20".tr,
                                          style: theme.textTheme.headlineLarge)
                                    ]))),
                            SizedBox(height: 16.v),
                            CustomElevatedButton(
                                height: 36.v,
                                text: "lbl_recharge".tr,
                                buttonStyle: CustomButtonStyles.fillWhiteA,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeGray80001)
                          ])))
                ]))));
  }

  /// Section Widget
  Widget _buildChatBubbles() {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 90.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(left: 20.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 8.h);
                },
                itemCount: controller
                    .mallModelObj.value.chatbubblesItemList.value.length,
                itemBuilder: (context, index) {
                  ChatbubblesItemModel model = controller
                      .mallModelObj.value.chatbubblesItemList.value[index];
                  return ChatbubblesItemWidget(model);
                }))));
  }

  /// Section Widget
  Widget _buildViewHierarchy() {
    return Padding(
        padding: EdgeInsets.only(left: 23.h, right: 16.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 137.v,
                crossAxisCount: 2,
                mainAxisSpacing: 9.h,
                crossAxisSpacing: 9.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              Viewhierarchy1ItemModel model =
                  controller.mallModelObj.value.viewhierarchy1ItemList.value[0];
              return Viewhierarchy1ItemWidget(model);
            }));
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
        //  AppbarLeadingImage(
        //     imagePath: ImageConstant.imgArrowdownGray80003,
        //     margin: EdgeInsets.only(left: 20.h, top: 16.v, bottom: 16.v),
        //     onTap: () {
        //       onTapArrowLeft();
        //     }),
        centerTitle: true,
        title: Text("lbl_mall".tr));
  }
}
