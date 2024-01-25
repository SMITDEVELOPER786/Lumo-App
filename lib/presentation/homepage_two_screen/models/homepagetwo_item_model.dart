import '../../../core/app_export.dart';/// This class is used in the [homepagetwo_item_widget] screen.
class HomepagetwoItemModel {HomepagetwoItemModel({this.screen, this.id, }) { screen = screen  ?? Rx(ImageConstant.imgScreen11);id = id  ?? Rx(""); }

Rx<String>? screen;

Rx<String>? id;

 }
