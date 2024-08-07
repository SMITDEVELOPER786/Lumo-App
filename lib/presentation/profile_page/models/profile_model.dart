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
        vIPCenter: ImageConstant.Shop.obs,
        vIPCenter1: "Shop".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.Backpack.obs,
        vIPCenter1: "Backpack".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.Reward.obs,
        vIPCenter1: "Reward".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.Gamenew.obs,
        vIPCenter1: "Game".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.medal.obs,
        vIPCenter1: "Medal".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.applyagencynew.obs,
        vIPCenter1: "Apply agency".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.applyhostingnew.obs,
        vIPCenter1: "Apply hosting".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.livedatanew.obs,
        vIPCenter1: "Live data".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.VIPnew.obs,
        vIPCenter1: "Vip".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.myvip.obs,
        vIPCenter1: "My VIP".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.guardiannew.obs,
        vIPCenter1: "Guardian".obs,
      ),
      // ProfileItemModel(
      //   Page: MallScreen(),
      //   vIPCenter: ImageConstant.mall.obs,
      //   vIPCenter1: "Mall".obs,
      // ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.MyAgencyNew.obs,
        vIPCenter1: "My agency".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.withdrawnew.obs,
        vIPCenter1: "Withdraw".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.giftcollection.obs,
        vIPCenter1: "Gift collection".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.settingdnew.obs,
        vIPCenter1: "Settings".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.blocklistnew.obs,
        vIPCenter1: "Block List".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.aboutlumo.obs,
        vIPCenter1: "About Lumo".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.ratelumo.obs,
        vIPCenter1: "Rate lumo".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.helpline.obs,
        vIPCenter1: "Help line".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.facebook.obs,
        vIPCenter1: "Facebook".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.instagram.obs,
        vIPCenter1: "Instagram".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.tiktok.obs,
        vIPCenter1: "Tik Tok".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.youtube.obs,
        vIPCenter1: "YouTube".obs,
      ),
      ProfileItemModel(
        Page: MallScreen(),
        vIPCenter: ImageConstant.withdrw.obs,
        vIPCenter1: "Withdraw".obs,
      ),
      // ProfileItemModel(
      //   Page: MallScreen(),
      //   vIPCenter: ImageConstant.fierly.obs,
      //   vIPCenter1: "Admin".obs,
      // ),
    ];

    if (UserController.user.data?.isReseller == true) {
      profileItemList.value.add(
        ProfileItemModel(
          Page: MallScreen(),
          vIPCenter: ImageConstant.cointradingnew.obs,
          vIPCenter1: "Coins Trading".obs,
        ),
      );
    }
  }
}
