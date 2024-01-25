import '../../../core/app_export.dart';/// This class is used in the [entryeffects_item_widget] screen.
class EntryeffectsItemModel {EntryeffectsItemModel({this.entryImage, this.entryText, this.id, }) { entryImage = entryImage  ?? Rx(ImageConstant.imgCurrencyeth);entryText = entryText  ?? Rx("Entry effects");id = id  ?? Rx(""); }

Rx<String>? entryImage;

Rx<String>? entryText;

Rx<String>? id;

 }
