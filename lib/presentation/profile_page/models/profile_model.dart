import 'package:muhammad_zubair_s_application4/presentation/homepage_three_page/USerModel.dart';
import 'package:muhammad_zubair_s_application4/presentation/mall_screen/mall_screen.dart';
import 'package:muhammad_zubair_s_application4/presentation/sign_in_screen/controller/usercontroller.dart';

import '../../../core/app_export.dart';
import 'profile_item_model.dart';

/// This class defines the variables used in the [profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileModel {
  final usercontroller = Get.put(UserController());
  Rx<List<ProfileItemModel>> profileItemList = Rx<List<ProfileItemModel>>([]);
  ProfileModel() {
    profileItemList.value = [
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.VIP.obs,
        vIPCenter1: "VIP Center".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.mall.obs,
        vIPCenter1: "Mall".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.guardian.obs,
        vIPCenter1: "Guardian".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.livedata.obs,
        vIPCenter1: "Live data".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.applyagency.obs,
        vIPCenter1: "Apply hosting".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.applyagency.obs,
        vIPCenter1: "Apply agency".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.game.obs,
        vIPCenter1: "Game".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.block.obs,
        vIPCenter1: "Block List".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.settings.obs,
        vIPCenter1: "Settings".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.withdraw.obs,
        vIPCenter1: "Withdrawal".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.fierly.obs,
        vIPCenter1: "Admin".obs,
      ),
    ];

    if (UserController.user.data?.isReseller == true) {
      profileItemList.value.add(
        ProfileItemModel(
          Page: MallScreen(),
          vIPCenter: ImageConstant.coins.obs,
          vIPCenter1: "Coins Trading".obs,
        ),
      );
    }
  }
}
