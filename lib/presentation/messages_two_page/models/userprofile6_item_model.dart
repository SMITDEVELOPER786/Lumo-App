import '../../../core/app_export.dart';/// This class is used in the [userprofile6_item_widget] screen.
class Userprofile6ItemModel {Userprofile6ItemModel({this.closeButton, this.titleText, this.messageText, this.timeText, this.notificationCount, this.id, }) { closeButton = closeButton  ?? Rx(ImageConstant.imgCloseWhiteA700);titleText = titleText  ?? Rx("Monzo Live");messageText = messageText  ?? Rx("Hello dear, can we meet?");timeText = timeText  ?? Rx("1m");notificationCount = notificationCount  ?? Rx("3");id = id  ?? Rx(""); }

Rx<String>? closeButton;

Rx<String>? titleText;

Rx<String>? messageText;

Rx<String>? timeText;

Rx<String>? notificationCount;

Rx<String>? id;

 }
