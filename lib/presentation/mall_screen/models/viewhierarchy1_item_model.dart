import '../../../core/app_export.dart';/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {Viewhierarchy1ItemModel({this.textProp2, this.imageProp2, this.imageProp3, this.id, }) { textProp2 = textProp2  ?? Rx("Preview");imageProp2 = imageProp2  ?? Rx(ImageConstant.imgMaskGroup1);imageProp3 = imageProp3  ?? Rx(ImageConstant.imgCheckmarkGreen80006);id = id  ?? Rx(""); }

Rx<String>? textProp2;

Rx<String>? imageProp2;

Rx<String>? imageProp3;

Rx<String>? id;

 }
