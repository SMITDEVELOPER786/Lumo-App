import '../../../core/app_export.dart';/// This class is used in the [userprofile11_item_widget] screen.
class Userprofile11ItemModel {Userprofile11ItemModel({this.withdrewText, this.amountText, this.timestampText, this.amountText1, this.statusText, this.id, }) { withdrewText = withdrewText  ?? Rx("You withdrew");amountText = amountText  ?? Rx("#20,304");timestampText = timestampText  ?? Rx("15-03-2023 08:48 am");amountText1 = amountText1  ?? Rx("20,304");statusText = statusText  ?? Rx("Completed");id = id  ?? Rx(""); }

Rx<String>? withdrewText;

Rx<String>? amountText;

Rx<String>? timestampText;

Rx<String>? amountText1;

Rx<String>? statusText;

Rx<String>? id;

 }
