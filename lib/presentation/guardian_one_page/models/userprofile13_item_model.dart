import '../../../core/app_export.dart';/// This class is used in the [userprofile13_item_widget] screen.
class Userprofile13ItemModel {Userprofile13ItemModel({this.userText, this.checkmarkImage, this.userImage, this.id, }) { userText = userText  ?? Rx("10,500");checkmarkImage = checkmarkImage  ?? Rx(ImageConstant.imgCheckmarkGreen80006);userImage = userImage  ?? Rx(ImageConstant.imgPngkey1);id = id  ?? Rx(""); }

Rx<String>? userText;

Rx<String>? checkmarkImage;

Rx<String>? userImage;

Rx<String>? id;

 }
