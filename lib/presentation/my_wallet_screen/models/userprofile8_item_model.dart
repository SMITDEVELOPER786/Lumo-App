import '../../../core/app_export.dart';/// This class is used in the [userprofile8_item_widget] screen.
class Userprofile8ItemModel {Userprofile8ItemModel({this.userImage, this.text5000, this.textUSD100, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgMaskGroup79x171);text5000 = text5000  ?? Rx("5000");textUSD100 = textUSD100  ?? Rx("USD 100");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? text5000;

Rx<String>? textUSD100;

Rx<String>? id;

 }
