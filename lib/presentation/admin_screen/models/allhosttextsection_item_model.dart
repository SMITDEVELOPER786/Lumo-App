import '../../../core/app_export.dart';/// This class is used in the [allhosttextsection_item_widget] screen.
class AllhosttextsectionItemModel {AllhosttextsectionItemModel({this.allHostImage, this.allHostText, this.id, }) { allHostImage = allHostImage  ?? Rx(ImageConstant.imgThumbsUpGreenA700);allHostText = allHostText  ?? Rx("All Host");id = id  ?? Rx(""); }

Rx<String>? allHostImage;

Rx<String>? allHostText;

Rx<String>? id;

 }
