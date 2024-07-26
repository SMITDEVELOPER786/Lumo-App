import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:muhammad_zubair_s_application4/presentation/edit_profile_screen/usermodel.dart';

class UserCoinController extends GetxController {
  static UserCoinsModel user = UserCoinsModel();


   bool isLoding = false;

  setLoading(bool val) {
    isLoding = val;
    update();
  }

  get data => user;

   updateUserCoin(UserCoinsModel data) {
    user = data;
    update();
  }

}