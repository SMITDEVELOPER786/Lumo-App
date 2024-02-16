import '../../../core/app_export.dart';

/// This class is used in the [chatbubbles1_item_widget] screen.
class Chatbubbles1ItemModel {
  Chatbubbles1ItemModel({
    this.chatBubblesText,
    this.IMG,
    this.id,
  }) {
    chatBubblesText = chatBubblesText ?? Rx("Chat Bubbles");
    var image = IMG ??Rx(ImageConstant.imageNotFound);
    id = id ?? Rx("");
  }

  Rx<String>? chatBubblesText;
  var IMG;

  Rx<String>? id;
}
