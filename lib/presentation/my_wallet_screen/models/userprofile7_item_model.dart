import '../../../core/app_export.dart';/// This class is used in the [userprofile7_item_widget] screen.
class Userprofile7ItemModel {Userprofile7ItemModel({this.userImage, this.userName, this.userID, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse471);userName = userName  ?? Rx("Ralph Edwards");userID = userID  ?? Rx("ID: 2363830");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? userName;

Rx<String>? userID;

Rx<String>? id;

 }
