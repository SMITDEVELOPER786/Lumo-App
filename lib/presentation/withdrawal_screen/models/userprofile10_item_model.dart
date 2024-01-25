import '../../../core/app_export.dart';/// This class is used in the [userprofile10_item_widget] screen.
class Userprofile10ItemModel {Userprofile10ItemModel({this.diamondImage, this.convertText, this.id, }) { diamondImage = diamondImage  ?? Rx(ImageConstant.imgCurrencyeth);convertText = convertText  ?? Rx("Convert diamonds");id = id  ?? Rx(""); }

Rx<String>? diamondImage;

Rx<String>? convertText;

Rx<String>? id;

 }
