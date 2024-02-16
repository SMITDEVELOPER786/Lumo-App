import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.vIPCenter, this.vIPCenter1, this.id,this.Page }) { vIPCenter = vIPCenter  ?? Rx(ImageConstant.imgThumbsUpGreenA700);vIPCenter1 = vIPCenter1  ?? Rx("VIP Center");id = id  ?? Rx(""); }

Rx<String>? vIPCenter;

var Page;

Rx<String>? vIPCenter1;

Rx<String>? id;

 }
