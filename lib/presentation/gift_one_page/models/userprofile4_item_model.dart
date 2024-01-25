import '../../../core/app_export.dart';/// This class is used in the [userprofile4_item_widget] screen.
class Userprofile4ItemModel {Userprofile4ItemModel({this.userImage, this.userName, this.stackText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgButterflySideView);userName = userName  ?? Rx("Butterfly");stackText = stackText  ?? Rx("3000");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? stackText;

Rx<String>? id;

 }
