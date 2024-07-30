
import 'package:get/get.dart';
import 'package:muhammad_zubair_s_application4/presentation/edit_profile_screen/usermodel.dart';

import '../../homepage_three_page/USerModel.dart';



class UserController extends GetxController {
  static UserModel user = UserModel();


  bool isLoding = false;

  setLoading(bool val) {
    isLoding = val;
    update();
  }

  get data => user;

  void User(UserModel data) {
    user = data;
    update();
  }

}
