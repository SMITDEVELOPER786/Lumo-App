import '../../../core/app_export.dart';/// This class is used in the [userprofile14_item_widget] screen.
class Userprofile14ItemModel {Userprofile14ItemModel({this.userImage, this.username, this.locationImage1, this.locationText, this.locationImage2, this.ageText, this.lvTwelve, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse4687);username = username  ?? Rx("Empire Bby");locationImage1 = locationImage1  ?? Rx(ImageConstant.imgMappinLime10011);locationText = locationText  ?? Rx("Illinois, texas");locationImage2 = locationImage2  ?? Rx(ImageConstant.imgConfettiLime10011);ageText = ageText  ?? Rx("23 ");lvTwelve = lvTwelve  ?? Rx("Lv.12");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? username;

Rx<String>? locationImage1;

Rx<String>? locationText;

Rx<String>? locationImage2;

Rx<String>? ageText;

Rx<String>? lvTwelve;

Rx<String>? id;

 }
