import '../../../core/app_export.dart';/// This class is used in the [jointhestreaming_item_widget] screen.
class JointhestreamingItemModel {JointhestreamingItemModel({this.image, this.title, this.description, this.buttonText, this.id, }) { image = image  ?? Rx(ImageConstant.imgRectangle28);title = title  ?? Rx("Join the streaming Revolution");description = description  ?? Rx("Embark on a Journey of Limitless Entertainment – Experience Seamless Streaming Like Never Before");buttonText = buttonText  ?? Rx("Start Now");id = id  ?? Rx(""); }

Rx<String>? image;

Rx<String>? title;

Rx<String>? description;

Rx<String>? buttonText;

Rx<String>? id;

 }
