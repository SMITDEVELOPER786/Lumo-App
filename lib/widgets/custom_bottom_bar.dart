import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:muhammad_zubair_s_application4/core/app_export.dart';
import 'package:muhammad_zubair_s_application4/widgets/custom_floating_button.dart';

import '../presentation/homepage_one_tab_container_screen/controller/homepage_one_tab_container_controller.dart';
import '../presentation/stream_screen/stream_screen.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
 var controller = Get.put(HomepageOneTabContainerController());

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgIconlyLightHome,
      activeIcon: ImageConstant.imgIconlyLightHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgInfo,
      activeIcon: ImageConstant.imgInfo,
      title: "lbl_explore".tr,
      type: BottomBarEnum.Explore,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUploadBlueGray400,
      activeIcon: ImageConstant.imgUploadBlueGray400,
      title: "lbl_stream".tr,
      type: BottomBarEnum.Stream,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavChat,
      activeIcon: ImageConstant.imgUploadBlueGray400,
      title: "lbl_chat".tr,
      type: BottomBarEnum.Chat,
    ),
     BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Connect,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.v,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          30.h,
        ),
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgFrame238788,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: controller.selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
            
              icon:
              index == 2 ? 
             Padding(
               padding: const EdgeInsets.all(0.0),
               child: CustomFloatingButton(
               onTap: (){
                 print(bottomMenuList[index].type);
                // index=2;
                  // controller.setBottomIndex(index,false);
                  // print(bottomMenuList[index].type);
            // widget.onChanged?.call(bottomMenuList[index].type);
            Get.to(()=>StreamScreen());
         
                         },
                       height: 48,
                       width: 48,
                       child: CustomImageView(
                         imagePath: ImageConstant.imgUploadGray5001,
                         height: 24.0.v,
                         width: 24.0.h,
                       ),
                     ),
             )
              :
               CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                color: appTheme.blueGray400,
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelMediumMontserratGreen70002
                          .copyWith(
                        color: appTheme.green70002,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
             controller.setBottomIndex(index,false);
            widget.onChanged?.call(bottomMenuList[index].type);
            setState(() {
              controller.selectedIndex=index;
            });
          
          },
        ),
      
    );
  }
}

enum BottomBarEnum {
  Home,
  Explore,
  Chat,
  Stream,
  Connect,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
