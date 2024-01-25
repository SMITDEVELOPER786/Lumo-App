import '../../../core/app_export.dart';/// This class is used in the [userprofile3_item_widget] screen.
class Userprofile3ItemModel {Userprofile3ItemModel({this.userImage, this.username, this.liveStreamText, this.id, }) { userImage = userImage  ?? Rx(ImageConstant.imgEllipse46850x50);username = username  ?? Rx("Empire Bby");liveStreamText = liveStreamText  ?? Rx("Live streams starts in 10 Mins");id = id  ?? Rx(""); }

Rx<String>? userImage;

Rx<String>? username;

Rx<String>? liveStreamText;

Rx<String>? id;

 }
