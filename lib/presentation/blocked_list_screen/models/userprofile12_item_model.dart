import '../../../core/app_export.dart';/// This class is used in the [userprofile12_item_widget] screen.
class Userprofile12ItemModel {Userprofile12ItemModel({this.userImage, this.empireBbyText, this.illinoisTexasImage1, this.illinoisTexasText, this.illinoisTexasImage2, this.twentyThreeText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgPlayBlueGray100);empireBbyText = empireBbyText  ?? Rx("Empire Bby");illinoisTexasImage1 = illinoisTexasImage1  ?? Rx(ImageConstant.imgMappinLime10011);illinoisTexasText = illinoisTexasText  ?? Rx("Illinois, texas");illinoisTexasImage2 = illinoisTexasImage2  ?? Rx(ImageConstant.imgConfettiLime10011);twentyThreeText = twentyThreeText  ?? Rx("23 ");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? empireBbyText;

Rx<String>? illinoisTexasImage1;

Rx<String>? illinoisTexasText;

Rx<String>? illinoisTexasImage2;

Rx<String>? twentyThreeText;

Rx<String>? id;

 }
