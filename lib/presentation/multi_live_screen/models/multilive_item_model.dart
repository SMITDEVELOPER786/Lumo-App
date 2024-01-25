import '../../../core/app_export.dart';/// This class is used in the [multilive_item_widget] screen.
class MultiliveItemModel {MultiliveItemModel({this.rectangle, this.id, }) { rectangle = rectangle  ?? Rx(ImageConstant.imgRectangle90);id = id  ?? Rx(""); }

Rx<String>? rectangle;

Rx<String>? id;

 }
