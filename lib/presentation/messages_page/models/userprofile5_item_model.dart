import '../../../core/app_export.dart';/// This class is used in the [userprofile5_item_widget] screen.
class Userprofile5ItemModel {Userprofile5ItemModel({this.profileImage, this.username, this.greetingText, this.timeText, this.notificationCount, this.id, }) { profileImage = profileImage  ?? Rx(ImageConstant.imgEllipse46850x50);username = username  ?? Rx("Empire Bby");greetingText = greetingText  ?? Rx("Hello dear, can we meet?");timeText = timeText  ?? Rx("1m");notificationCount = notificationCount  ?? Rx("3");id = id  ?? Rx(""); }

Rx<String>? profileImage;

Rx<String>? username;

Rx<String>? greetingText;

Rx<String>? timeText;

Rx<String>? notificationCount;

Rx<String>? id;

 }
