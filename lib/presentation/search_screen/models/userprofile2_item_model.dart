import '../../../core/app_export.dart';/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {Userprofile2ItemModel({this.houseImage, this.houseImage1, this.houseText, this.userName, this.id, }) { houseImage = houseImage  ?? Rx(ImageConstant.imgRectangle115);houseImage1 = houseImage1  ?? Rx(ImageConstant.imgCollision);houseText = houseText  ?? Rx("House");userName = userName  ?? Rx("Oneil’ gurl");id = id  ?? Rx(""); }

Rx<String>? houseImage;

Rx<String>? houseImage1;

Rx<String>? houseText;

Rx<String>? userName;

Rx<String>? id;

 }
