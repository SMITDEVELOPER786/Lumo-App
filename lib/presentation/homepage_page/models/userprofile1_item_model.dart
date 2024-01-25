import '../../../core/app_export.dart';/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {Userprofile1ItemModel({this.image, this.userName, this.userImage, this.text1, this.text2, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle11);userName = userName  ?? Rx("Naomi AS");userImage = userImage  ?? Rx(ImageConstant.imgSpaFlower);text1 = text1  ?? Rx("Illinois, texas");text2 = text2  ?? Rx("23 ");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? userName;

Rx<String>? userImage;

Rx<String>? text1;

Rx<String>? text2;

Rx<String>? id;

 }
