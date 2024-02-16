import 'package:muhammad_zubair_s_application4/presentation/mall_screen/mall_screen.dart';

import '../../../core/app_export.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  Rx<List<ProfileItemModel>> profileItemList = Rx([
    ProfileItemModel(
      Page: MallScreen(),

        vIPCenter: ImageConstant.imgThumbsUpGreenA700.obs,
        vIPCenter1: "VIP Center".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgThumbsUpGreenA70024x24.obs,
        vIPCenter1: "Mall".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgCheckmarkGreenA700.obs,
        vIPCenter1: "Guardian".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgFile.obs, vIPCenter1: "Live data".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgSettingsGreenA700.obs,
        vIPCenter1: "Apply hosting".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgSettingsGreenA70024x24.obs,
        vIPCenter1: "Apply agency".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgGamecontroller.obs, vIPCenter1: "Game".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgMusicGreenA700.obs,
        vIPCenter1: "Block List".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgSearchGreenA700.obs,
        vIPCenter1: "Settings".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgThumbsUp24x24.obs,
        vIPCenter1: "Withdrawal".obs),
    ProfileItemModel(
       Page: MallScreen(),
        vIPCenter: ImageConstant.imgThumbsUp24x24.obs, vIPCenter1: "Admin".obs)
  ]);
}
