import 'package:muhammad_zubair_s_application4/presentation/explore_bottomsheet/controller/explore_controller.dart';
import 'package:muhammad_zubair_s_application4/presentation/explore_bottomsheet/explore_bottomsheet.dart';
import 'package:muhammad_zubair_s_application4/presentation/explore_one_page/Gift_Screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/homepage_tab_container_page/homepage_tab_container_page.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_bottom_bar.dart';

import 'controller/explore_one_controller.dart';
import 'models/explore_one_model.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_icon_button.dart';

class ExploreOnePage extends StatefulWidget  {
  ExploreOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  State<ExploreOnePage> createState() => _ExploreOnePageState();
}

class _ExploreOnePageState extends State<ExploreOnePage> with SingleTickerProviderStateMixin {
  ExploreOneController controller =
      Get.put(ExploreOneController(ExploreOneModel().obs));

late TabController _tabController;

 @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  // showData(){
  //   if (_tabController == null) {
  //   _tabController = TabController(length: 7, vsync: this);
  // }
  // }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: _buildBottomBar(),
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup744,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.white.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.imgGroup744,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Spacer(
                  flex: 73,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgPlayWhiteA700,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                ),
                SizedBox(height: 18.v),
                _buildMarylan(),
                Spacer(
                  flex: 26,
                ),
                Container(
                  height: 4.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.lime50,
                  ),
                  child: ClipRRect(
                    child: LinearProgressIndicator(
                      value: 0.4,
                      backgroundColor: appTheme.lime50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMarylan() {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 182.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_marylan".tr,
                  style: CustomTextStyles.titleSmallSemiBold,
                ),
                SizedBox(height: 8.v),
                Text(
                  "msg_check_out_this_stunning".tr,
                  style: CustomTextStyles.bodySmallInterWhiteA70012,
                ),
                SizedBox(height: 3.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinLightGreen5004,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "lbl_united_states".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 46.v,
                width: 40.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: AlertDialog(
                                  contentPadding: EdgeInsets
                                      .zero, // To remove default padding
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        20), // Adjust the radius as needed
                                  ),
                                  backgroundColor:
                                      Color.fromARGB(255, 238, 255, 210),
                                  title: Center(
                                    child: Column(
                                      children: [
                                        Text("Follow Maryam"),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    Center(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green,
                                              ),
                                              onPressed: () {},
                                              child: Text(
                                                "Yes, please",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            height: 50,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.6,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                side: BorderSide(
                                                    color: Colors.green),
                                                backgroundColor: Colors.white,
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.green),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 10),

                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      },
                      child: CustomImageView(
                        imagePath: ImageConstant.imgRectangle5955,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPluscircle,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              GestureDetector(
                onTap: () {
                  showBottomSheet(context);
                },
                child: CustomImageView(
                  imagePath: ImageConstant.imgMegaphone,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_900".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_12k".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              CustomImageView(
                imagePath: ImageConstant.imgShare,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 3.v),
              Text(
                "lbl_200".tr,
                style: CustomTextStyles.bodySmallInterWhiteA70012,
              ),
              SizedBox(height: 14.v),
              GestureDetector(
                onTap: (){
                  // showData()

                   showBottomSheet(context);

                },
                child: CustomIconButton(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.gradientGreenToPrimaryTL18,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGridWhiteA700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageThreePage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreOnePage;
      case BottomBarEnum.Stream:
        return AppRoutes.streamScreen;
      case BottomBarEnum.Chat:
        return AppRoutes.messagesTabContainerScreen;
      case BottomBarEnum.Connect:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageTabContainerPage:
        return HomepageTabContainerPage();
      default:
        return DefaultWidget();
    }
  }

  showBottomSheet(context) {
    return 
    showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1,color: Color.fromARGB(255, 147, 202, 10)),
                      borderRadius: BorderRadius.circular(20)),
                    height: 300,
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true, // Set isScrollable to true
                          labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                          controller: _tabController,
                          indicatorColor: Color.fromARGB(255, 154, 240, 15),
                          tabs: const [
                            Tab(
                                child: Text(
                              'Popular',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'Regular',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'New',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'Valentine',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'Luxury',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'Grand',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                            Tab(
                                child: Text(
                              'Super hero',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 87, 205, 2)),
                            )),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _tabController,
                            children: const [
                              // View for Tab 1
                              GiftScreens(),
                              GiftScreens(),
                              GiftScreens(),
                              GiftScreens(),
                              GiftScreens(),
                              GiftScreens(),
                              GiftScreens(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
  }
}
