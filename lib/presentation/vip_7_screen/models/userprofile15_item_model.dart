import '../../../core/app_export.dart';/// This class is used in the [userprofile15_item_widget] screen.
class Userprofile15ItemModel {Userprofile15ItemModel({this.vipBadgeImage, this.vipBadgeText, this.closeImage, this.carText, this.vipBadgeImage1, this.privilegeText, this.vipBadgeImage2, this.hideText, this.id, }) { vipBadgeImage = vipBadgeImage  ?? Rx(ImageConstant.imgGroup47x47);vipBadgeText = vipBadgeText  ?? Rx("VIP Badge");closeImage = closeImage  ?? Rx(ImageConstant.imgClose42x34);carText = carText  ?? Rx("Car");vipBadgeImage1 = vipBadgeImage1  ?? Rx(ImageConstant.imgGroup42x34);privilegeText = privilegeText  ?? Rx("Privilege");vipBadgeImage2 = vipBadgeImage2  ?? Rx(ImageConstant.imgGroupBlueGray1000142x34);hideText = hideText  ?? Rx("hide");id = id  ?? Rx(""); }

Rx<String>? vipBadgeImage;

Rx<String>? vipBadgeText;

Rx<String>? closeImage;

Rx<String>? carText;

Rx<String>? vipBadgeImage1;

Rx<String>? privilegeText;

Rx<String>? vipBadgeImage2;

Rx<String>? hideText;

Rx<String>? id;

 }
